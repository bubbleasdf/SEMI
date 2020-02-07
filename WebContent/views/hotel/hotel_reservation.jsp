<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- 

	header와 footer만 달아놓은 기본폼입니다 
	포함 : CSS / JS등등.. head부분에 추가적인 내용이 없는이상 넣을 필요 없습니다
	이제 body 태그 안에 만들어놓은 내용을 집어넣으면 됩니다.

-->
<head>


</head>

<body>
	<%@ include file="/views/common/header.jsp"%>
	<%@ include file="/views/common/hyun.jsp" %>
<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-md-9" style="margin: auto;">
					<div class="text-center">
						<h1 class="h4 text-gray-900 mb-4 marg45">호텔 예약하기</h1>		  
					</div>
				<div class="card card-outline card-info col-md-9 " style="margin: auto;">
					<form class="">
						<div class="form-group" style="margin-top:30px;">
								<input type="text" class="form-control form-control-user" id="exampleName" placeholder="예약자명">
							</div>
							  <div class="form-group" style="margin-top:30px;">
							<input type="email" class="form-control form-control-user" id="exampleInputEmail" placeholder="휴대 전화">
						  </div>
						  <div class="form-group row" style="margin-top:30px;">
							<div class="col-sm-6 mb-3 mb-sm-0">
							  <input type="date" class="form-control form-control-user" id="exampleInputPassword"> <!--시작날짜-->
							</div>
							<div class="col-sm-6">
							  <input type="date" class="form-control form-control-user" id="exampleRepeatPassword"><!--끝 날짜-->
							</div>
						  </div>
						  <div class="form-group" style="margin-top:30px;">
							<input type="text" class="form-control form-control-user" id="exampleAddress" placeholder="가격">
						  </div>
						  <div class="card-footer" style="background: white;">
							<div style="text-align: center;" >
								  <button class="btn btn-primary btn-user " style="width:250px; background: #008000; color:white;">결제하기</button>
								  <a href="hotel_information.html" class="btn btn-primary btn-user" style="width:250px; background:#008000; color:white;">이전페이지로</a>
							</div>
					</form>
					<!-- /.card-body -->
					</div>
					<!-- /.card-footer -->
				</div>
			</div>
			<!-- /.col-->
		</div>
		<!-- ./row -->
	</section>
	<!-- /.content -->
	<br><br><br><br>

	<%@ include file="/views/common/footer.jsp"%>


</body>

</html>