package com.kh.petner.market.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.petner.market.model.service.MarketService;
import com.kh.petner.market.model.vo.Market;

/**
 * Servlet implementation class MarketSelectOneServlet
 */
@WebServlet("/selectOne.ad")
public class MarketSelectOneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MarketSelectOneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[Servlet]marketSelectOne() 시작");
		
		int marketId = Integer.parseInt(request.getParameter("marketId"));

		MarketService ms = new MarketService();
		
		Market m = ms.selectOne(marketId);
		
		String page = "";
		if(m != null) {
			page = "views/admin/admin_market_modify.jsp";
			request.setAttribute("market", m);
		} else {
			page = "PETNER/common/errorPage.jsp";
			request.setAttribute("msg", "마켓 SelectOne() 실패");
		}
		request.getRequestDispatcher(page).forward(request, response);
	
		System.out.println("[Servlet] marketSelectOne() 종료");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
