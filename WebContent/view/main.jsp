<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
	integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
	crossorigin="anonymous">
	
<link href="css/3-col-portfolio.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>


<title>Insert title here</title>
</head>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">겸's GROUND</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<c:choose>
						<c:when test="${login ==null}">
							<li class="nav-item"><a class="nav-link" href="#">Login</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="calendar.kg">Register</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link" href="#">대여확인</a></li>
							<li class="nav-item"><a class="nav-link" href="#">마이페이지</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#">Logout</a>
							</li>
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
			<p class="m-0 text-center text-white">Copyright &copy; Kyeom
				Company 2018</p>
		</div>
		<!-- /.container -->
	</footer>
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