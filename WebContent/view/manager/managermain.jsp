<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="X-UA-Compatible" content="text/html charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>관리자 페이지</title>
<!-- Bootstrap core CSS-->
<link href="view/manager/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="view/manager/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Custom styles for this template-->
<link href="view/manager/css/sb-admin.css" rel="stylesheet">
<link href="view/manager/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">


<script src="view/manager/vendor/jquery/jquery.min.js"></script>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
		id="mainNav">
		<a class="navbar-brand" href="index.html">KYEOM's Ground</a>
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Dashboard"><a class="nav-link" href="manager.kg"> <i
						class="fa fa-fw fa-dashboard"></i> <span class="nav-link-text">Dashboard</span>
				</a></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Components"><a
					class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
					href="#collapseComponents" data-parent="#exampleAccordion"> <i
						class="fa fa-fw fa-wrench"></i> <span class="nav-link-text">회원관리</span>
				</a>
					<ul class="sidenav-second-level collapse" id="collapseComponents">
						<li><a href="usermanage.kg">회원보기</a></li>
						<li><a href="#">기타</a></li>
					</ul></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Example Pages"><a
					class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
					href="#collapseExamplePages" data-parent="#exampleAccordion"> <i
						class="fa fa-fw fa-file"></i> <span class="nav-link-text">시설관리</span>
				</a>
					<ul class="sidenav-second-level collapse" id="collapseExamplePages">
						<li><a href="categorymanage.kg">카테고리 관리</a></li>
						<li><a href="facilitymanage.kg">시설 관리</a></li>
					</ul></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Charts"><a class="nav-link" href="reservationmanage.kg"> <i
						class="fa fa-fw fa-area-chart"></i> <span class="nav-link-text">예약관리</span>
				</a></li>
			</ul>
			<ul class="navbar-nav sidenav-toggler">
				<li class="nav-item"><a class="nav-link text-center"
					id="sidenavToggler"> <i class="fa fa-fw fa-angle-left"></i>
				</a></li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown"
					href="#" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fa fa-fw fa-envelope"></i> <span
						class="d-lg-none">Messages <span
							class="badge badge-pill badge-primary">12 New</span>
					</span> <span class="indicator text-primary d-none d-lg-block"> <i
							class="fa fa-fw fa-circle"></i>
					</span>
				</a>
					<div class="dropdown-menu" aria-labelledby="messagesDropdown">
						<h6 class="dropdown-header">New Messages:</h6>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#"> <strong>David
								Miller</strong> <span class="small float-right text-muted">11:21
								AM</span>
							<div class="dropdown-message small">Hey there! This new
								version of SB Admin is pretty awesome! These messages clip off
								when they reach the end of the box so they don't overflow over
								to the sides!</div>
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#"> <strong>Jane Smith</strong>
							<span class="small float-right text-muted">11:21 AM</span>
							<div class="dropdown-message small">I was wondering if you
								could meet for an appointment at 3:00 instead of 4:00. Thanks!</div>
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#"> <strong>John Doe</strong> <span
							class="small float-right text-muted">11:21 AM</span>
							<div class="dropdown-message small">I've sent the final
								files over to you for review. When you're able to sign off of
								them let me know and we can discuss distribution.</div>
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item small" href="#">View all messages</a>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown"
					href="#" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fa fa-fw fa-bell"></i> <span
						class="d-lg-none">Alerts <span
							class="badge badge-pill badge-warning">6 New</span>
					</span> <span class="indicator text-warning d-none d-lg-block"> <i
							class="fa fa-fw fa-circle"></i>
					</span>
				</a>
					<div class="dropdown-menu" aria-labelledby="alertsDropdown">
						<h6 class="dropdown-header">New Alerts:</h6>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#"> <span class="text-success">
								<strong> <i class="fa fa-long-arrow-up fa-fw"></i>Status
									Update
							</strong>
						</span> <span class="small float-right text-muted">11:21 AM</span>
							<div class="dropdown-message small">This is an automated
								server response message. All systems are online.</div>
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#"> <span class="text-danger">
								<strong> <i class="fa fa-long-arrow-down fa-fw"></i>Status
									Update
							</strong>
						</span> <span class="small float-right text-muted">11:21 AM</span>
							<div class="dropdown-message small">This is an automated
								server response message. All systems are online.</div>
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#"> <span class="text-success">
								<strong> <i class="fa fa-long-arrow-up fa-fw"></i>Status
									Update
							</strong>
						</span> <span class="small float-right text-muted">11:21 AM</span>
							<div class="dropdown-message small">This is an automated
								server response message. All systems are online.</div>
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item small" href="#">View all alerts</a>
					</div></li>

				<li class="nav-item"><a class="nav-link" data-toggle="modal"
					data-target="#exampleModal"> <i class="fa fa-fw fa-sign-out"></i>Logout
				</a></li>
			</ul>
		</div>
	</nav>
	<div class="content-wrapper">
		<div class="container-fluid">
			<c:choose>
				<c:when test="${managercenterpage != null}">
					<jsp:include page="${managercenterpage}.jsp"></jsp:include>
				</c:when>
				<c:otherwise>
					<jsp:include page="managerhome.jsp"></jsp:include>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<!-- /.container-fluid-->
	<!-- /.content-wrapper-->
	<footer class="sticky-footer">
		<div class="container">
			<div class="text-center">
				<small>Copyright &copy; KyeomCompany 2018</small>
			</div>
		</div>
	</footer>
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fa fa-angle-up"></i>
	</a>
	<!-- Logout Modal-->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">로그아웃 하시겠습니다.</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">X</span>
					</button>
				</div>
				<div class="modal-body">로그아웃을 하면 메인 페이지로 이동됩니다..</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="logoutimpl.kg">Logout</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript-->
	<script src="view/manager/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script src="view/manager/vendor/jquery-easing/jquery.easing.min.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="view/manager/js/sb-admin.min.js"></script>
	
	<script src="view/manager/vendor/datatables/jquery.dataTables.js"></script>
    <script src="view/manager/vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <!-- Custom scripts for this page-->
    <script src="view/manager/js/sb-admin-datatables.min.js"></script>
	<!-- Custom scripts for this page-->
	<!-- Toggle between fixed and static navbar-->
	<script>
		$('#toggleNavPosition').click(function() {
			$('body').toggleClass('fixed-nav');
			$('nav').toggleClass('fixed-top static-top');
		});
	</script>
	<!-- Toggle between dark and light navbar-->
	<script>
		$('#toggleNavColor').click(function() {
			$('nav').toggleClass('navbar-dark navbar-light');
			$('nav').toggleClass('bg-dark bg-light');
			$('body').toggleClass('bg-dark bg-light');
		});
	</script>
	</div>
</body>

</html>
