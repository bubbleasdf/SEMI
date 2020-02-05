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
		<title>My Page</title>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<link rel="stylesheet" href="/PETNER/resources/css/member/main_hyon.css" type="text/css">
		
	</head>
	
	
	<body>
			<%@ include file="../common/header.jsp" %> 
			
			<!--  메뉴바랑 겹치는 부분 제거 -->
	<div style="padding-top:150px;">
	
    <!--######## End Header Area ########-->


    <!--tap-->
    <script>

        $(function () {

            $(".tab_content").hide();
            $(".tab_content:first").show();

            $("ul.tabs li").click(function () {
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


    <!-- Start Align Area -->
    <section class="whole-wrap">
        <div class="container">

          


 <!--start tab area-->
    <div id="t_container">
        <ul class="tabs">
            <li class="active" rel="tab1">회원 정보 관리</li>
            <li rel="tab2">호텔 예약 조회</li>
            <li rel="tab3">1:1 문의 내역</li>
            <li rel="tab4">펫스타그램</li>
            <li rel="tab5">펫신져</li>
            <li rel="tab6">펫튜브</li>
        </ul>
        <div class="tab_container">
            <div id="tab1" class="tab_content"><br>
            
                <div class="map_text">
                    
                    <div class="progress-table-wrap" style="text-align: center;">
                        <form action="/PETNER/pDelete.me" method="post" id="delForm">
                            <div class="mt-10">
                                <input type="text" name="USER_EMAIL"  
                                required class="single-input" disabled value="<%=m.getUserEmail() %>"
                                    style="background: lightgray;">
                            </div>
                            <div class="mt-10">
                                <input type="text" name="USER_NAME"
                                required class="single-input" disabled value="<%=m.getUserName() %>">
                            </div>
                            
                            <div class="mt-10">
                                <input type="text" name="USER_PHONE"  required class="single-input"
                                disabled value="<%=m.getUserPhone() %>">
                            </div>


                            <!-- 펫 프로필 -->
                            <!--  권한으로 펫이 등록되었는지 체크하고 펫의 정보를 띄운다.  -->
                            <div class="mt-10">
                                <input type="text" name="first_name" placeholder="이제 나머지는" onfocus="this.placeholder = ''"
                                    onblur="this.placeholder = 'Accent color'" required class="single-input-accent">
                            </div>
                            <div class="mt-10">
                                <input type="text" name="first_name" placeholder="뭐 필요한거 나중에 추가할 것!" onfocus="this.placeholder = ''"
                                    onblur="this.placeholder = 'Secondary color'" required class="single-input-secondary">
                            </div>
                            
                            
                            <br>
                            <a href="memberInfo.jsp" style="background: lightgray;" class="genric-btn success">수정</a>
                            <a href="views/member/PET/InsertPet.jsp" style="background: lightgray;" class="genric-btn danger">PET 등록</a>
                            
                            <br><br>
                            
                            <a href="#" onclick="deleteMember();" style="background: lightgray;" class="genric-btn danger">회원 탈퇴</a>
                        </form>
                    </div>



                </div>

            </div>
            <!-- #tab1 -->
            <div id="tab2" class="tab_content">
                <p class="text1">예약 관리 </p>
                
                <!--######## End post-content Area ########-->
            </div>
            <!-- #tab2 -->

            <div id="tab3" class="tab_content">
                <p class="text1">1:1 문의</p>
                
            </div>
            <!-- #tab3 -->

            <div id="tab4" class="tab_content">
                <p class="text1">펫스타그램</p>
                
            </div>
            <!-- #tab4 -->

            <div id="tab5" class="tab_content">
                <p class="text1">펫신져</p>
                
            </div>
            <!-- #tab5 -->

            <div id="tab6" class="tab_content">
                <p class="text1">펫튜브</p>
                
            </div>
            <!-- #tab6 -->
        </div>
        <!-- .tab_container -->
    </div>
    <!-- #container -->
</div>

<script>
	function deleteMember(){
		 if (confirm("정말 탈퇴하시겠습니까??") == true){    //확인
			 $('#delForm').submit();
		 }else{   //취소
		     return false;
		 }
		 
	}//deleteMember
</script>


    <!--######## start footer Area ########-->
			<%@ include file="../common/footer.jsp" %>
    <!--######## End footer Area ########-->



</body>

</html>