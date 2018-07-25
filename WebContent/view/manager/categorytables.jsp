<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Breadcrumbs-->
<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="#">카테고리 관리</a></li>
	<li class="breadcrumb-item active">테이블</li>
</ol>
<!-- Example DataTables Card-->
<div class="card mb-3">
	<div class="card-header">
		<i class="fa fa-table"></i> 카테고리목록
	</div>
	<div class="card-body">
		<div class="table-responsive">
			<button class="btn btn-primary" data-toggle="modal"
				data-target="#categoryAddModal">카테고리추가</button><br><br>
			<table class="table table-bordered" id="dataTable" width="100%"
				cellspacing="0">
				<thead>
					<tr>
						<th>name</th>
						<th>color</th>
						<th>delete</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${categorylist != null }">
						<c:forEach var="category" items="${categorylist }">
							<tr>
								<td>${category.c_name }</td>
								<td>${category.c_color }</td>
								<td><a href="deletecategoryimpl.kg?c_name=${category.c_name }">삭제</a></td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
		</div>
	</div>
	<div class="card-footer small text-muted">Updated yesterday at
		11:59 PM</div>
</div>
<jsp:include page="categorymanage.jsp"></jsp:include>
