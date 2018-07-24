<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.category-img {
	width: 340px;
	height: 200px;
}
</style>

<!-- Page Content -->
<div class="container">

	<!-- Page Heading -->
	<h1 class="my-4">
		KYEOMS GROUND <small>Secondary Text</small>
	</h1>



	<div class="row">
		<c:if test="${categorylist != null }">
			<c:forEach var="item" items="${categorylist }">

				<div class="col-lg-4 col-sm-6 portfolio-item">
					<div class="card h-100">
						<a href="facility.kg?c_name=${item.c_name }"><img
							class="card-img-top category-img"
							src="imgs/category/${item.c_imgname }" alt=""></a>
						<div class="card-body">
							<h4 class="card-title">${item.c_name }</h4>
							<p class="card-text">아이엠그라운드 제휴 및 대관 가능 시설</p>
						</div>

					</div>
				</div>
			</c:forEach>
		</c:if>
	</div>
	<!-- /.row -->



</div>
<!-- /.container -->