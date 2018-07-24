<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">

<link href="css/1-col-portfolio.css" rel="stylesheet">

<title>Insert title here</title>
<style>
.facility-card {
	background: #cccccc;
}

#facility-img {
	width: 350px;
	height: 250px;
}
</style>
<script>
	
</script>
</head>
<body>
	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading -->
		<h1 class="my-4">
			${category } <small>경기장 리스트</small>
		</h1>

		<c:if test="${flist!= null}">
			<c:forEach var="item" items="${flist}">
				<!-- 공공 운동시설 하나 -->
				<div class="row facility-card">
					<div class="col-md-4">
						<a href="#"> <img class="img-fluid rounded mb-3 mb-md-0"
							src="imgs/${item.f_imgname }" alt="" align=left vspace=0
							id="facility-img" hspace=30>
						</a>
					</div>

					<div class="col-md-5">

						<h3>${item.f_name}</h3>
						<!-- <p>설명~~~~~~~</p> -->
						<br>
						<h5>시간 : ${item.f_opentime}시 -${item.f_closetime}시</h5>
						<h5>가격: ${item.f_price} 만원</h5>
						<h5>위치: ${item.f_address}</h5>
						<br> <br>
						
						
						<form action="calendar.kg" method="post">
							<input name="f_num" type="hidden" value="${item.f_num}">
							<input name="c_name" type="hidden" value="${item.c_name}">
							<input name="f_name" type="hidden" value="${item.f_name}">
							<input name="f_address" type="hidden" value="${item.f_address}">
							<input name="f_tel" type="hidden" value="${item.f_tel}">
							<input name="f_price" type="hidden" value="${item.f_price}">
							<input name="f_max" type="hidden" value="${item.f_max}">
							<input name="f_opentime" type="hidden" value="${item.f_opentime}">
							<input name="f_closetime" type="hidden"
								value="${item.f_closetime}"> <input name="f_maxtime"
								type="hidden" value="${item.f_maxtime}">

							<c:choose>
								<c:when test="${user != null }">
									<input type="submit" value="예약하기"></input>
								</c:when>
								<c:otherwise>
									<input type="button" data-toggle="modal" data-target="#myModal" value="예약하기">
								</c:otherwise>
							</c:choose>


						</form>

					</div>
					<br>
				</div>
				<hr>
			</c:forEach>
		</c:if>
	</div>
	
	<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        <div class="modal-body">
          <p>로그인을 해주세요.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>



</body>