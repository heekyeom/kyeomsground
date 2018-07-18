<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<!-- Page Content -->
<div class="container">

	<!-- Page Heading -->
	<h1 class="my-4">
		KYEOMS GROUND <small>Secondary Text</small>
	</h1>



	<div class="row">
		<c:forEach var="i" begin="1" end="6" step="1">

			<div class="col-lg-4 col-sm-6 portfolio-item">
				<div class="card h-100">
					<a href="#"><img class="card-img-top"
						src="http://tourimage.interpark.com/BBS/Tour/FckUpload/201311/6352057291459937563.jpg"
						alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">축구장</a>
						</h4>
						<p class="card-text">
							아이엠그라운드 제휴 및 대관 가능 시설
						</p>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<!-- /.row -->



</div>
<!-- /.container -->