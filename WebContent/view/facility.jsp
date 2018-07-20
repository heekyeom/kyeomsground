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
		<!-- ���� ��ü� �ϳ� -->
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
						<h3>${facilitiesName}ù��°�౸��</h3>
						<p>����~~~~~~~</p>
						<h3>�ð� : ${facilitiesTime} �ð� : 10:00 - 20:00</h3>
						<h3>����: ${facilitiesPrice} ����: 10,000 ��</h3>
						<h3>��ġ: ${facilitiesSpot} ��ġ: ��Ƽķ�۽�</h3>
						<form action="" method="">
							<input type="button" name="reserve1" value="��ư����"></input> <input
								type="submit" name="reserve2" value="���Կ���"></input>
						</form>
						<a class="btn btn-primary" href="#">��ũ��ư����</a>
					</c:when>
					<c:when test="${facilitiesName != null}">
					</c:when>
				</c:choose>
			</div>
			<br>
		</div>
	</c:forEach>

</div>
