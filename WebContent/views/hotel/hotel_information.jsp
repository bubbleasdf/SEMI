<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.overlay {
	position: absolute;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
}

.home-banner-area2 {
	background: url(../img/dogcat.jpg) no-repeat center fixed;
	background-size: cover;
}

.banner-area2 {
	background: url(/petner/resources/img/hotel2.jpg) no-repeat center;
	background-size: cover;
	min-height: 420px;
}

.blog-banner-area2 {
	background: url(/petner/resources/img/bath.jpg) no-repeat center fixed;
	background-size: cover;
	min-height: 420px;
}

.blog-banner-area2 .banner-content h1 {
	font-size: 48px;
	line-height: 54px !important;
	margin: 0;
}

@media ( max-width : 768px) {
	.blog-banner-area2 .banner-content h1 {
		font-size: 35px;
		line-height: 40px !important;
	}
}

@media ( max-width : 414px) {
	.blog-banner-area2 .banner-content h1 {
		font-size: 30px;
	}
}

.blog-banner-area2 .banner-content p {
	font-size: 16px;
	margin: 40px 20px;
}

@media ( max-width : 768px) {
	.blog-banner-area2 .banner-content p {
		margin: 10px;
	}
}

.blog-banner-area2 .banner-content .primary-btn {
	background: #fff;
	color: #222222;
}

.blog-banner-area2 .banner-content .primary-btn:hover {
	background: #3face4;
	color: #ffffff;
}

.fullscreen {
	height: 740px;
}

@media ( max-width : 767.98px) {
	.fullscreen {
		height: 600px !important;
	}
}

@media ( max-width : 768px) {
	.fullscreen {
		height: 400px !important;
	}
}

.overlay-bg {
	background-color: rgba(34, 34, 34, 0.27);
}

.banner-content h1 {
	color: #fff;
	font-size: 72px;
	font-weight: 100;
	line-height: 77px !important;
	margin-top: 20px;
	margin-bottom: 20px;
}

@media ( max-width : 768px) {
	.banner-content h1 {
		font-size: 35px;
		line-height: 40px !important;
	}
}

@media ( max-width : 414px) {
	.banner-content h1 {
		font-size: 30px;
	}
}

.banner-content p {
	max-width: 900px;
}

.header-btn {
	border: 1px solid transparent;
	background-color: #008000;
}

.header-btn:hover {
	border: 1px solid #008000;
	background: transparent;
	color: #008000;
}

.banner-img {
	text-align: right;
}

@media ( max-width : 767px) {
	.banner-img {
		width: 60%;
		text-align: center;
		margin-left: auto;
		margin-right: auto;
	}
}
</style>
</head>
<body>



	<%@ include file="/views/common/header.jsp"%>
	<%@ include file="/views/common/hyun.jsp"%>
	
	<!--image slide-->
		<script>
			$(document).ready(function() {
				var main = $('.bxslider').bxSlider({
					mode : 'fade',
					auto : true, //자동으로 슬라이드 
					controls : false, //좌우 화살표   
					autoControls : false, //stop,play 
					pager : true, //페이징 
					pause : 3000,
					autoDelay : 0,
					slideWidth : 800,
					speed : 500,
					stopAutoOnclick : true
				});

				$(".bx-stop").click(function() { // 중지버튼 눌렀을때 
					main.stopAuto();
					$(".bx-stop").hide();
					$(".bx-start").show();
					return false;
				});

				$(".bx-start").click(function() { //시작버튼 눌렀을때 
					main.startAuto();
					$(".bx-start").hide();
					$(".bx-stop").show();
					return false;
				});

				$(".bx-start").hide(); //onload시 시작버튼 숨김. 

			});

			function lic() {
				// $(".bxslider").click(function(){
				$("#modal1").modal();
				// });
			}
		</script>
	

	<!--######## start banner Area ########-->
	<section class="banner-area2 relative" id="home">
		<div class="container">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="about-content col-lg-12">
					<h1 class="text-black text-uppercase">
						Petner+ <span style="font-weight: 200;">HOTEL</span>
					</h1>
					<p class="text-black link-nav">We are always with you</p>
				</div>
			</div>
		</div>
	</section>
	<!--######## End banner Area ########-->
	<hr>

	<!--hyon_경로표시부분-->
	<div class="way_wrap">
		<a href="/petner/index.jsp"><img
			src="/petner/resources/img/home_icon.png"> HOME </a>> <a
			href="hotel_home.jsp"><span> HOTEL</span></a> > <a
			href="hotel_information.jsp"><span>  케이에이치애견호텔</span></a>
	</div>

	<!-- 경로표시 끝-->

	<!--######## Portfolio Details Area ########-->
	<section class="portfolio_details_area section-gap">
		<div class="container">
			<div class="portfolio_details_inner">
				<div class="row">
					<div class="col-md-6">
						<div style="height: 400px; width: 500px;">
							<ul class="bxslider">
								<li><img src="/petner/resources/img/hotel4.jpg"
									style="height: 400px; width: 500px;" /></li>
								<li><img src="/petner/resources/img/hotel3.jpg"
									style="height: 400px; width: 500px;" /></li>

								<li><img src="/petner/resources/img/hop_img3.jpeg"
									style="height: 400px; width: 500px;" /></li>

							</ul>
						</div>
					</div>
					<div class="offset-md-1 col-md-5">
						<div class="portfolio_right_text mt-30">

							<h4 style="font-weight: bold;">케이에이치애견호텔</h4>

							<hr>
							<p style="text-align: right;">* 예약 상담 필수</p>
							<p>
								<!--이미지 슬라이드 적용시켜야함-->
							<ul>
								<li><img class="plus" src="/petner/resources/img/plus2.png">&nbsp;
									산책서비스</li>
								<li><img class="plus" src="/petner/resources/img/plus2.png">&nbsp;
									목욕</li>
								<li><img class="plus" src="/petner/resources/img/plus2.png">&nbsp;
									스파</li>
								<li><img class="plus" src="/petner/resources/img/plus2.png">&nbsp;
									24시 운영</li>
							</ul>
							</p>

							<hr>

							<ul class="list">
								<!--별점 부분-->
								<li><i class="fa fa-star"></i><i class="fa fa-star"></i><i
									class="fa fa-star"></i><i class="fa fa-star"></i><i
									class="fa fa-star"></i></li>
							</ul>

							<!--button-->
							<div class="but_wrap">

								<a href="hotel_reservation.jsp"><button onclick="">예약하기</button></a>
								<button class="btn1" onclick="">카카오톡 문의</button>
								<button onclick="">전화 문의</button>
							</div>

							<ul class="list social_details">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-behance"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>






		
	</section>
	<!--######## End Portfolio Details Area ########-->








	<hr>

	<!--start tab area-->
	<div id="t_container">
		<ul class="tabs">
			<li class="active" rel="tab1">병원상세정보</li>
			<li rel="tab2">후기</li>
			<li rel="tab3">문의</li>
		</ul>
		<div class="tab_container">
			<div id="tab1" class="tab_content">
				<br>
				<div id="map"></div>
				<br>

				<div class="map_text">
					<br>
					<br> ＊오시는 길<br>
					<br> [주소]<br> 경기도 성남시 분당구 성남대로 45 2층 (오리역 6번 출구 스타벅스 2층)<br>
					<br> [대표전화]<br> 031-711-8275<br>
					<br> [이메일]<br> petner+@naver.com<br>
					<br> 지하철을 이용하시는 분<br> →분당선 오리역 하차 후 6번 출구 우측으로 보이는
					스타벅스(계양빌딩) 2층<br>
					<br> 버스를 이용하시는 분<br> →직행버스 1241, 9414, 1005-1, 5500-1,
					7007-1, 1303, 3500,9000<br> →급행버스 8100, 8101, 8109, 8106<br>
					→일반버스 390, 380, 300, 101, 520, 60, 720-2, 700-2, 116-1, 116-3, 820<br>
					→마을버스 39-3, 810<br>
					<br> 자가용을 이용하시는 분<br> →오리역 6번출구 계영빌딩 120대 주차 가능 (병원 건물)<br>
				</div>

			</div>
			<!-- #tab1 -->
			<div id="tab2" class="tab_content">
				<p class="text1">후기</p>
				<!--######## Start post-content Area ########-->
				<section class="post-content-area single-post-area">
					<div class="container">
						<div class="row">
							<div class="posts-list">
								<div class="comments-area">
									<div class="comment-list">
										<div class="single-comment justify-content-between d-flex">
											<div class="user justify-content-between d-flex">
												<div class="thumb">
													<img src="/petner/resources/img/user_icon.png" alt="">
												</div>
												<div class="desc">
													<h5>
														<a href="#">송현*&nbsp;&nbsp;&nbsp;&nbsp;hyunahzzang</a>
													</h5>
													<p class="date">2020-01-13</p>
													<p class="comment" style="font-size: 15px;">우리 강아지가 잘
														쉬다 갑니다^^.감사합니다~~</p>
												</div>
											</div>
											<div class="reply-btn">
												<a href="" class="btn-reply text-uppercase"
													style="font-size: 15px;">reply</a>
											</div>
										</div>
									</div>
									<div class="comment-list left-padding">
										<div class="single-comment justify-content-between d-flex">
											<div class="user justify-content-between d-flex">
												<div class="thumb">
													<img src="/petner/resources/img/user_icon.png" alt="">
												</div>
												<div class="desc">
													<h5>
														<a href="#">admin</a>
													</h5>
													<p class="date">2020-01-14</p>
													<p class="comment" style="font-size: 15px;">감사합니다. 다음에도
														방문해주세요^^</p>
												</div>
											</div>
											<div class="reply-btn">
												<a href="" class="btn-reply text-uppercase"
													style="font-size: 15px;">reply</a>
											</div>
										</div>
									</div>
									<div class="comment-list left-padding">
										<div class="single-comment justify-content-between d-flex">
											<div class="user justify-content-between d-flex">
												<div class="thumb">
													<img src="/petner/resources/img/user_icon.png" alt="">
												</div>
												<div class="desc">
													<h5>
														<a href="#">김희*&nbsp;&nbsp;&nbsp;&nbsp;</a>
													</h5>
													<p class="date">2019-12-22</p>
													<p class="comment" style="font-size: 15px;">
														덕분에 여행 다녀오는데 너무너무 마음이 편안했어요<br> 다음에도 또 방문하고 싶네요!~
													</p>
												</div>
											</div>
											<div class="reply-btn">
												<a href="" class="btn-reply text-uppercase"
													style="font-size: 15px;">reply</a>
											</div>
										</div>
									</div>
									<div class="comment-list">
										<div class="single-comment justify-content-between d-flex">
											<div class="user justify-content-between d-flex">
												<div class="thumb">
													<img src="/petner/resources/img/user_icon.png" alt="">
												</div>
												<div class="desc">
													<h5>
														<a href="#">admin</a>
													</h5>
													<p class="date">2019-12-28</p>
													<p class="comment" style="font-size: 15px;">감사합니다. 다음에도
														방문 부탁드려요!</p>
												</div>
											</div>
											<div class="reply-btn">
												<a href="" class="btn-reply text-uppercase"
													style="font-size: 15px;">reply</a>
											</div>
										</div>
									</div>
								</div>
								<div class="comment-form">
									<h4>Leave a Comment</h4>
									<form>
										<div class="form-group form-inline">
											<div class="form-group col-lg-6 col-md-12 name">
												<input type="text" class="form-control" id="name"
													placeholder="Enter Name" onfocus="this.placeholder = ''"
													onblur="this.placeholder = 'Enter Name'">
											</div>
											<div class="form-group col-lg-6 col-md-12 email">
												<input type="email" class="form-control" id="email"
													placeholder="Enter email address"
													onfocus="this.placeholder = ''"
													onblur="this.placeholder = 'Enter email address'">
											</div>
										</div>
										<div class="form-group">
											<input type="text" class="form-control" id="subject"
												placeholder="Subject" onfocus="this.placeholder = ''"
												onblur="this.placeholder = 'Subject'">
										</div>
										<div class="form-group">
											<textarea class="form-control mb-10" rows="5" name="message"
												placeholder="Messege" onfocus="this.placeholder = ''"
												onblur="this.placeholder = 'Messege'" required=""></textarea>
										</div>
										<a href="#" class="com_btn">Post Comment</a>
									</form>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!--######## End post-content Area ########-->
			</div>
			<!-- #tab2 -->

			<div id="tab3" class="tab_content">
				<p class="text1">문의 및 상담</p>
				<div class="qna_notice">
					<br>
					<p>
						* 이 곳은 간단한 날짜 상담 혹은 호텔에 오기 전 오시기 힘드실 때 문의 및 상담하는 곳입니다. 자세한 문의가
						필요하신 분께서는 전화 상담 부탁드립니다. <br>
						<br> * 답변은 1~3 일 이내 작성됩니다.<br>
						<br> * 가급적 전화/카카오톡/게시판 문의로 날짜 상담 후 예약메뉴 이용 부탁드립니다. <br>
						<br> * 카카오톡, 전화 문의가 조금 더 빠르니 이용하시길 바랍니다.
					</p>
				</div>

				<hr style="width: 1000px;">

				<div class="qna_wrap">
					<div class="que_box">
						<!-- <img src="img/que.jpg">&nbsp;&nbsp;&nbsp;&nbsp; -->
						<button onclick="">질문</button>
						&nbsp;&nbsp;&nbsp;&nbsp; <span>송현*
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; choconuna</span><br>
						<p style="font-size: 14px;">
							2020년 2월 10일-13일 호텔 이용하고 싶은데요. <br>자리 있나요?
						</p>
						<br>
					</div>
					<hr style="width: 1000px;">
					<div class="ans_box">
						<button onclick="">답변</button>
						&nbsp;&nbsp;&nbsp;&nbsp; <span>김철*
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chulsu777</span><br>
						<br>
						<p>네 가능합니다. 예약하신 후 전화로 안내드릴게요.</p>
						<hr style="width: 1000px;">
					</div>
				</div>
			</div>
			<!-- #tab3 -->
		</div>
		<!-- .tab_container -->
	</div>
	<!-- #container -->

	<!--map-->
	<script>
		$(document)
				.ready(
						function() {

							var center = new google.maps.LatLng(37.549286,
									127.075156);
							var park = new google.maps.LatLng(37.548527,
									127.080783);
							var mapArea = document.querySelector('#map'); //google map은 jQuery사용안됨
							var map = new google.maps.Map(mapArea, {
								mapTypeId : google.maps.MapTypeId.ROADMAP,
								zoom : 17,
								center : center
							}); //어디에 지도를 뿌릴 것인지

							var marker = new google.maps.Marker({
								position : center,
								title : "Hello World!"
							});

							var marker3 = new google.maps.Marker({
								position : park,
								title : "Childrens Grand Park"
							});

							var goldStar = {
								path : 'M 125,5 155,90 245,90 175,145 200,230 125,180 50,230 75,145 5,90 95,90 z',
								fillColor : "yellow",
								fillOpacity : 0.8,
								scale : 1,
								strokeColor : "gold",
								strokeWeight : 14
							};

							var marker2 = new google.maps.Marker({
								position : new google.maps.LatLng(37.548527,
										127.080783),
								icon : goldStar,
								map : map
							});

							marker3.setMap(map);
							marker2.setMap(map);
							// To add the marker to the map, call setMap();
							marker.setMap(map);
						});
	</script>
	<!--map end-->

	<!--tap-->
	<script>
		$(function() {

			$(".tab_content").hide();
			$(".tab_content:first").show();

			$("ul.tabs li").click(function() {
				$("ul.tabs li").removeClass("active").css("color", "#333");
				//$(this).addClass("active").css({"color": "darkred","font-weight": "bolder"});
				$(this).addClass("active").css("color", "green");
				$(".tab_content").hide()
				var activeTab = $(this).attr("rel");
				$("#" + activeTab).fadeIn()
			});
		});
	</script>
	<!--tap end-->
	<%@ include file="/views/common/footer.jsp"%>


	<!--end tab area-->
</body>
</html>