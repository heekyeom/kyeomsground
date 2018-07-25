<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
	integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link href="css/3-col-portfolio.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>

<script src="js/kguser.js"></script>

<title>겸스그라운드 메인</title>
</head>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="main.kg">KYEOM's GROUND</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<c:choose>
						<c:when test="${user == null}">
							<li class="nav-item active"><a class="nav-link"
								href="main.kg">Home <span class="sr-only">(current)</span>
							</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="modal"
								data-target="#loginModal">Login</a></li>
							<li class="nav-item"><a class="nav-link" href="register.kg">Register</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link" href="#">${user.u_name }
									님 환영합니다.</a></li>
							<li class="nav-item active"><a class="nav-link"
								href="main.kg">Home <span class="sr-only">(current)</span>
							</a></li>
							<c:choose>
								<c:when test="${user.u_ismanager =='TRUE' }">
									<li class="nav-item"><a class="nav-link" href="manager.kg">서비스관리</a>
									</li>
								</c:when>
								<c:otherwise>
									<li class="nav-item"><a class="nav-link" href="mypage.kg">mypage</a>
									</li>
								</c:otherwise>
							</c:choose>
							<li class="nav-item"><a class="nav-link" data-toggle="modal"
								data-target="#logoutModal">Logout</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
			z`
		</div>
	</nav>
	<!-- content -->
	<c:choose>
		<c:when test="${centerpage != null}">
			<jsp:include page="${centerpage}.jsp"></jsp:include>
		</c:when>
		<c:otherwise>
			<jsp:include page="home.jsp"></jsp:include>
		</c:otherwise>
	</c:choose>

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-white">
				사업자 등록 번호: 000-0000-0000<br> 대표자명: 윤석현 <br> 주소: 서울시 강남구 역삼동
				멀티캠퍼스 <br> 전화번호: 010-4154-8930 (이메일로 연락 주세요) <br> 이메일:
				on21life@naver.com <br> 통신판매신고번호: 제 0000-서울-0000 호
			</p>
			<p class="m-0 text-center text-white">Copyright &copy; Kyeom
				Company 2018</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- login model -->
	<jsp:include page="login.jsp"></jsp:include>


	<!-- logout model -->
	<jsp:include page="logout.jsp"></jsp:include>

	<!-- Bootstrap core JavaScript -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"
		integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em"
		crossorigin="anonymous"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>

</body>
</html>