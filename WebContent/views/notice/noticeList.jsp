<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.kh.petner.notice.model.vo.*" %>
    
    <% ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list"); %>
    
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
	<title>Petner+</title>


	<link rel="stylesheet" href="/PETNER/resources/css/hr.css">
	
	<style>
	.hiddeee{
		display:none;
	}
	</style>

</head>

<body>
	<!--######## Start Header Area ########-->
	<%@ include file="../common/header.jsp" %> 
	<!--######## start banner Area ########-->
	<!--  메뉴바랑 겹치는 부분 제거 -->
	<div style="padding-top:150px;"></div>
	<!--######## End Header Area ########-->

	<!--######## start banner Area ########-->
	<section class="notice-banner-area relative" id="home">
		<div class="overlay overlay-bg"></div>
		<div class="container">
			<div class="row tesxt-left d-flex align-items-center justify-content-center">
				<div class="about-content col-lg-12">
					<h1 class="text-white text-uppercase  ">
						NOTICE
					</h1>
				</div>
			</div>
		</div>
	</section>
	<!--######## End banner Area ########-->

	

	<!--######## Start Latest News Area ########-->
	<section class="latest-news-area section-gap-hr">
		<div class="container">
			<div class="row">
				<div class="col-12 marg45">
					<div class="main-title text-center">
						<h1 style="font-weight: 300;">NOTICE</h1>
					</div>
					<div class="card">

					<% if(m != null && m.getUserEmail().equals("admin@a.com")){ %>
					<button onclick="location.href= 'views/notice/noticeInsertForm.jsp' " class = "btn-primary btn-lg">공지사항 작성하기</button>
					<% } %>
						<!-- /.card-header -->
						<div class="card-body table-responsive p-0">
						  <table class="table table-hover" id ="noticeArea">
							<thead>
							  <tr>
							  	<th class ="hiddeee">nno</th>
								<th>Num</th>
								<th>E-mail</th>
								<th>Title</th>
								<th>Date</th>
							  </tr>
							</thead>
							<tbody>
							
							
							<% int i = 0; 
							for(Notice n : list){ 
							   i++;%>
							  <tr>
							  	<td class ="hiddeee"><%=n.getNno()%></td>
								<td><%=i%></td>
								<td><%=n.getNemail() %></td>
								<td><%=n.getNtitle()%></td>
								<td><%= n.getNdate() %></td>
							  </tr>
							  <% } %>
							</tbody>
						  </table>
						</div>
						<!-- /.card-body -->
					  </div>
					  <!-- /.card -->
				</div>

				<!-- 페이징 부분 -->
				<nav class="col-md-12 blog-pagination justify-content-center d-flex">
					<ul class="pagination">
						<li class="page-item">
							<a href="#" class="page-link" aria-label="Previous">
								<span aria-hidden="true">
									<span class="lnr lnr-chevron-left"></span>
								</span>
							</a>
						</li>
						<li class="page-item active"><a href="#" class="page-link">01</a></li>
						<li class="page-item"><a href="#" class="page-link">02</a></li>
						<li class="page-item"><a href="#" class="page-link">03</a></li>
						<li class="page-item"><a href="#" class="page-link">04</a></li>
						<li class="page-item"><a href="#" class="page-link">05</a></li>
						<li class="page-item">
							<a href="#" class="page-link" aria-label="Next">
								<span aria-hidden="true">
									<span class="lnr lnr-chevron-right"></span>
								</span>
							</a>
						</li>
					</ul>
				</nav>
				
			</div>
		</div>
	</section>
	<!--######## End Latest News Area ########-->

	<!--######## start footer Area ########-->
	
	<script>  
		 $(function(){
			
			$("#noticeArea td").mouseenter(function(){
				$(this).parent().css({"background":"#BBDEFB", "cursor":"pointer"});
			}).mouseout(function(){
				$(this).parent().css({"background":"white"});
			}).click(function(){
				/* console.log($(this).parent().children().eq(0)text()); */
				var nno = $(this).parent().children().eq(0).text();
				location.href="<%=request.getContextPath()%>/NoticeDetail.go?nno=" + nno;
			});
		});
		</script>
	
		<%@ include file="../common/footer.jsp" %>
		
	<!--######## End footer Area ########-->

</body>

</html>