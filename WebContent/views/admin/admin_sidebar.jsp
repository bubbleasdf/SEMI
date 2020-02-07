<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


  <!-- Custom fonts for this template -->
  <link href="/PETNER/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template admin페이지 CSS-->
  <link href="/PETNER/resources/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page 테이블 CSS --> 
  <link href="/PETNER/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

  <!-- Core plugin JavaScript-->
  <script src="/PETNER/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/PETNER/resources/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="/PETNER/resources/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="/PETNER/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="/PETNER/resources/js/demo/datatables-demo.js"></script>

</head>
<body>

<%-- 	<%@ include file="/views/common/hyun.jsp"%>
 --%>

	<!-- Sidebar -->
	<ul
		class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
		id="accordionSidebar">

		<!-- Sidebar - Brand -->
		<a
			class="sidebar-brand d-flex align-items-center justify-content-center"
			href="/PETNER/views/admin/admin2.jsp">
			<div class="sidebar-brand-icon rotate-n-15">
				<i class="fas fa-laugh-wink"></i>
			</div>
			<div class="sidebar-bran
			d-text mx-3">관리자페이지</div>
		</a>

		<!-- Divider -->
		<hr class="sidebar-divider my-0">

		<!-- Nav Item - Dashboard -->
		<li class="nav-item"><a class="nav-link" href="/PETNER/index.jsp">
				<i class="fas fa-fw fa-tachometer-alt"></i> <span>메인 페이지</span>
		</a></li>

		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Heading -->
		<div class="sidebar-heading">나중에 지울거</div>

		<!-- Nav Item - Pages Collapse Menu -->
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#collapseTwo"
			aria-expanded="true" aria-controls="collapseTwo"> <i
				class="fas fa-fw fa-cog"></i> <span>Components</span>
		</a>
			<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 class="collapse-header">Custom Components:</h6>
					<a class="collapse-item" href="buttons.html">Buttons</a> <a
						class="collapse-item" href="cards.html">Cards</a>
				</div>
			</div></li>

		<!-- Nav Item - Utilities Collapse Menu -->
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#collapseUtilities"
			aria-expanded="true" aria-controls="collapseUtilities"> <i
				class="fas fa-fw fa-wrench"></i> <span>Utilities</span>
		</a>
			<div id="collapseUtilities" class="collapse"
				aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 class="collapse-header">Custom Utilities:</h6>
					<a class="collapse-item" href="utilities-color.html">Colors</a> <a
						class="collapse-item" href="utilities-border.html">Borders</a> <a
						class="collapse-item" href="utilities-animation.html">Animations</a>
					<a class="collapse-item" href="utilities-other.html">Other</a>
				</div>
			</div></li>

		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Heading -->
		<div class="sidebar-heading">메뉴</div>

		<!-- Nav Item - Pages Collapse Menu -->
		<!-- Nav Item - Charts -->
		<li class="nav-item"><a class="nav-link"
			href="/PETNER/views/admin/admin_market_add.jsp"> <i
				class="fas fa-fw fa-chart-area"></i> 
				<span>매장 추가</span></a></li>

		<!-- Nav Item - Tables -->
		<li class="nav-item"><a class="nav-link"
			href="/PETNER/marketList.ad"> <i class="fas fa-fw fa-table"></i>
			<span>매장 목록</span></a></li>

		<!-- Nav Item - Tables -->
		<li class="nav-item"><a class="nav-link"
			href="/PETNER/userList.ad"> <i class="fas fa-fw fa-table"></i> 
			<span>유저 목록</span></a></li>

		<!-- Divider -->
		<hr class="sidebar-divider d-none d-md-block">


	</ul>
	<!-- End of Sidebar -->

</body>
</html>