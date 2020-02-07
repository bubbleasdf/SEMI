<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


</head>
<body>
	<%@ include file="/views/common/header.jsp"%>
	<div style="padding-top: 150px;"></div>

	<hr style="margin: 0px;">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<%@ include file="/views/admin/admin_sidebar.jsp"%>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Content Row -->
				<div class="row" style="margin: 50px">
					<!-- Earnings (Monthly) Card Example -->
					<div class="col-xl-3 col-md-6 mb-4" style="max-width: 350px">
						<div class="card border-left-primary shadow h-100 py-2">
							<div class="card-body">
								<div class="row no-gutters align-items-center">
									<div class="col mr-2">
										<div
											class="text-xs font-weight-bold text-primary text-uppercase mb-1">현재
											총 매장 수</div>
										<div class="h5 mb-0 font-weight-bold text-gray-800">가져오기</div>
									</div>
									<div class="col-auto">
										<i class="fas fa-calendar fa-2x text-gray-300"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Earnings (Monthly) Card Example -->
					<div class="col-xl-3 col-md-6 mb-4" style="max-width: 350px">
						<div class="card border-left-success shadow h-100 py-2">
							<div class="card-body">
								<div class="row no-gutters align-items-center">
									<div class="col mr-2">
										<div
											class="text-xs font-weight-bold text-success text-uppercase mb-1">등록된
											호텔 개수</div>
										<div class="h5 mb-0 font-weight-bold text-gray-800">2</div>
									</div>
									<div class="col-auto">
										<i class="fas fa-calendar fa-2x text-gray-300"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Earnings (Monthly) Card Example -->
					<div class="col-xl-3 col-md-6 mb-4" style="max-width: 350px">
						<div class="card border-left-info shadow h-100 py-2">
							<div class="card-body">
								<div class="row no-gutters align-items-center">
									<div class="col mr-2">
										<div
											class="text-xs font-weight-bold text-info text-uppercase mb-1">등록된
											미용 개수</div>
										<div class="h5 mb-0 font-weight-bold text-gray-800">1</div>
									</div>
									<div class="col-auto">
										<i class="fas fa-calendar fa-2x text-gray-300"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Earnings (Monthly) Card Example -->
					<div class="col-xl-3 col-md-6 mb-4" style="max-width: 350px">
						<div class="card border-left-warning shadow h-100 py-2">
							<div class="card-body">
								<div class="row no-gutters align-items-center">
									<div class="col mr-2">
										<div
											class="text-xs font-weight-bold text-warning text-uppercase mb-1">등록된
											병원 개수</div>
										<div class="h5 mb-0 font-weight-bold text-gray-800">4</div>
									</div>
									<div class="col-auto">
										<i class="fas fa-calendar fa-2x text-gray-300"></i>
									</div>
								</div>
							</div>
						</div>
					</div>




					<!-- Content Row -->
				</div>
				<!-- End of Main Content -->

			</div>
			<!-- End of Content Wrapper -->

		</div>
		<!-- End of Page Wrapper -->
	</div>
	<%@ include file="/views/common/footer.jsp"%>
</body>
</html>