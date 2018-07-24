<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">

<link href="css/1-col-portfolio.css" rel="stylesheet">

<title>Insert title here</title>
<style>
.facility-card{
	background:#cccccc;
}

#facility-img{
	width:350px;
	height:250px;
}
</style>
<script></script>
</head>
<body>
	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading -->
		<h1 class="my-4">
			Page Heading <small>Secondary Text</small>
		</h1>

		<c:if test="${flist!= null}">
			<c:forEach var="item" items="${flist}">
				<!-- 공공 운동시설 하나 -->
				<div class="row facility-card">
					<div class="col-md-4">
						<a href="#"> <img class="img-fluid rounded mb-3 mb-md-0"
							src="imgs/${item.f_imgname }" alt="" align=left vspace=0 id="facility-img"
							hspace=30>
						</a>
					</div>

					<div class="col-md-5">

						<h3>${item.f_name}</h3>
						<!-- <p>설명~~~~~~~</p> -->
						<br>
						<h5>시간 : ${item.f_opentime} -${item.f_closetime}</h5>
						<h5>가격: ${f_price}</h5>
						<h5>위치: ${f_address}</h5>
						<br>
						<br>
						<form action="calendar.kg" method="post">
							<input name="f_num" type="hidden" value="${item.f_num}">
							<input name="c_name" type="hidden" value="${item.c_name}">
							<input name="f_name" type="hidden" value="${item.f_name}">
							<input name="f_address" type="hidden" value="${item.f_address}">
							<input name="f_tel" type="hidden" value="${item.f_tel}">
							<input name="f_price" type="hidden" value="${item.f_price}">
							<input name="f_max" type="hidden" value="${item.f_max}">
							<input name="f_opentime" type="hidden" value="${item.f_opentime}">
							<input name="f_closetime" type="hidden" value="${item.f_closetime}">
							<input name="f_maxtime" type="hidden" value="${item.f_maxtime}">

							<input type="submit" value="예약하기"></input>
						</form>

					</div>
					<br>
				</div>
				 <hr>
			</c:forEach>
		</c:if>
	</div>
</body>