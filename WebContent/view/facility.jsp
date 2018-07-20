<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- Page Content -->
<div class="container">

	<!-- Page Heading -->
	<h1 class="my-4">
		Page Heading <small>Secondary Text</small>
	</h1>
	<c:forEach begin="1" end="15">
		<!-- 공공 운동시설 하나 -->
		<div class="row">
			<div class="col-md-7">
				<a href="#"> <img class="img-fluid rounded mb-3 mb-md-0"
					src="http://placehold.it/300x300" alt="" align=left vspace=0
					hspace=30>
				</a>
			</div>

			<div class="col-md-5">
				<c:choose>
					<c:when test="${facilitiesName == null}">
						<h3>${facilitiesName}첫번째축구장</h3>
						<p>설명~~~~~~~</p>
						<h3>시간 : ${facilitiesTime} 시간 : 10:00 - 20:00</h3>
						<h3>가격: ${facilitiesPrice} 가격: 10,000 원</h3>
						<h3>위치: ${facilitiesSpot} 위치: 멀티캠퍼스</h3>
						<form action="" method="">
							<input type="button" name="reserve1" value="버튼예약"></input> <input
								type="submit" name="reserve2" value="서밋예약"></input>
						</form>
						<a class="btn btn-primary" href="#">링크버튼예약</a>
					</c:when>
					<c:when test="${facilitiesName != null}">
					</c:when>
				</c:choose>
			</div>
			<br>
		</div>
	</c:forEach>

</div>
