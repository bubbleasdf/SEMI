<%@page import="com.kh.petner.member.pet.model.vo.Pet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   
<!DOCTYPE html>
<html>
	<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Author Meta -->
	<meta name="author" content="colorlib">
	<!-- Favicon-->
	<link rel="shortcut icon" href="/PETNER/resources/img/common/small_logo.jpg">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
		<title>PET 등록</title>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	</head>
	<body>
			<%@ include file="../../common/header.jsp" %> 
			
			<!--  메뉴바랑 겹치는 부분 제거 -->
	<div style="padding-top:150px;">
	
	<style>
		
	</style>
	
	</div>
		<div class="container">
			<div class="card o-hidden border-0 shadow-lg my-5">
			  <div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
				  <div class="col-lg-7" style="margin: auto;">
					<div class="p-5">
					  <div class="text-center">
						<h1 class="h4 text-gray-900 mb-4"> <%=m.getUserName() %>의 가족을 등록해주세요</h1>
					  </div>
				
					  <form class="user" id="joinForm" action="/PETNER/PInsert.pe" method="post"
					  enctype="multipart/form-data">
						
						<div class="form-group row">
						
							<input type="hidden" name="userEmail" value="<%=m.getUserEmail()%>">
							
							<div class="col-sm-6 mb-3 mb-sm-0" > <!-- 이름 -->
								<div id="asle" style="height:200px; width:255px; border:2px solid balck">

									<%if(m.getUserRoles() < 10){ %>
									<img class="card-top-img " height="170px" width="255px" alt="프로필사진" style="border:1px sold black"
									src="../../../resources/img/member/pet/default.jpg">
									<%}else{ %>
									<% Pet p = (Pet)session.getAttribute("pet"); %>
									<img class="card-top-img " height="170px" width="255px" alt="프로필사진" style="border:1px sold black"
									src="../../../resources/img/member/pet/<%= p.getPetPic() %>">
									<%} %>
									<br>
									<input type="file" name="petPic" id="petPic"/>
									<br>
									<input type="text" class="form-control form-control-user" name="userName" placeholder="이름을 입력해주세요.*" required>
								</div>
							</div>
							
							<div class="col-sm-6">
								<input type="date" class="form-control form-control-user" name="petBirth" placeholder="생일을 입력해주세요" required> <br>		
								<input type="text" class="form-control form-control-user" name="petProfile" placeholder="종 및 간단한 소개.*">
								
								<br>
								
								<div>
									<input type="radio" name="petType" value='b' checked="checked">대형 &nbsp;
									<input type="radio" name="petType" value='m'>중형 &nbsp;
									<input type="radio" name="petType" value='s'>소형 &nbsp;
								</div>
								<br>
								<div>
									<select name="petWeight">
										<option value="21">20kg 이상</option>
										<option value="20">15kg ~ 20kg</option>
										<option value="15">10kg ~ 15kg</option>
										<option value="10" selected>5kg ~ 10kg</option selected>
										<option value="5">5kg 이하</option>
									</select>
								</div>
							</div>
						
						</div>
						
						<div class="mt-10"> <!--  생일 -->
							
						</div>
						
						<div class="mt-10"><!-- 간단한 프로필 -->
	
						</div>	
						
						
						<br>
						<div class="row">
							<div class="col-sm-6">
								<a href="#" onclick="Pjoin();" style="background:#008000; width: 250px;"
								class="btn btn-primary btn-user btn-block">
									가족 등록
								</a>
							</div>
							<div class="col-sm-6">
								<a href="#" onclick="Preset();" style="background:#008000; width: 250px; "
								class="btn btn-primary btn-user btn-block">
									취소
								</a>
							</div>
						</div>
					  </form>
					  <hr>
	
					</div>
				  </div>
				</div>
			  </div>
			</div>
		</div>
			

		<script>
			function Pjoin(){
				$('#joinForm').submit();
			}

			function Preset(){
				$('#joinForm').reset();
			}
		</script>
			
			
			
			
			
			
			
			
			
			<%@ include file="../../common/footer.jsp" %>
	</body>
</html>