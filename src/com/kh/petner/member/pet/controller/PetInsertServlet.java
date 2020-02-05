package com.kh.petner.member.pet.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.petner.member.pet.model.service.PetService;
import com.kh.petner.member.pet.model.vo.Pet;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/PInsert.pe")
public class PetInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public PetInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String userEmail = request.getParameter("userEmail");
		String petName=request.getParameter("petName");
		String petType =request.getParameter("petType");
		String petBirth_ =request.getParameter("petBirth");
		String petProfile=request.getParameter("petProfile");
//		int petWeight =Integer.parseInt(request.getParameter("petWeight"));
		String petWeight_=request.getParameter("petWeight");

		System.out.println("받아온 petBirth : "+petBirth_);
		int petWeight = Integer.parseInt(petWeight_);
		
		
		Date petBirth = null;
		
		if(petBirth_ !="" && petBirth_ != null) {
			//날짜가 입력됨
			String[] dateArr = petBirth_.split("-");
			int[] intArr=new int[dateArr.length];

			for(int i=0; i<dateArr.length; i++) {
				intArr[i] = Integer.parseInt(dateArr[i]);
			}//for

			petBirth = new Date(new GregorianCalendar(intArr[0],intArr[1]-1,intArr[2]).getTimeInMillis());

		}else {	
			//날짜 입력안됨
			petBirth = new Date(new GregorianCalendar().getTimeInMillis());
		}//if else

		int maxSize=1024*1024*10;
		if(!ServletFileUpload.isMultipartContent(request)) {
			request.setAttribute("msg", "multipart를 통한 전송이 아닙니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}

		String root = request.getServletContext().getRealPath("/");
		String savePath=root+"resources/img/member/pet";
		
		MultipartRequest mrequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		
		String petPic = mrequest.getFilesystemName("petPic");
		
		Pet p = new Pet(userEmail, petName, petType, petBirth, petProfile, petWeight, petPic);

		int result = new PetService().insertPet(p);

		if(result>0) {
			System.out.println("펫 등록 성공");

			//마이페이지로 리다이렉트로 보냈는데 에러나면 로그인 서블릿으로 보내야댐
			response.sendRedirect("/PETNER/mpServlet.mp");
		}else {
			System.out.println("펫 등록 실패");
			request.setAttribute("msg", "등록 실패");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
