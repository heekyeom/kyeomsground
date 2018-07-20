<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<!-- Breadcrumbs-->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">시설관리</a></li>
			<li class="breadcrumb-item active">테이블</li>
		</ol>
		<!-- Example DataTables Card-->
		<div class="card mb-3">
			<div class="card-header">
				<i class="fa fa-table"></i> 운동장 시설 목록
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<button class="btn btn-primary"  data-toggle="modal"
					data-target="#exampleModal">시설 추가</button>
					<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
						<thead>
							<tr>
								<th>type</th>
								<th>name</th>
								<th>address</th>
								<th>tel</th>
								<th>opentime</th>
								<th>closetime</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>type</th>
								<th>name</th>
								<th>address</th>
								<th>tel</th>
								<th>opentime</th>
								<th>closetime</th>
							</tr>
						</tfoot>
						<tbody>
							<c:if test="${facilitylist != null }">
								<c:forEach var="facility" items="${facilitylist }">
									<tr>
										<td>${facility.c_type }</td>
										<td>${facility.f_name }</td>
										<td>${facility.f_adress }</td>
										<td>${facility.f_tel }</td>
										<td>${facility.f_opentime }</td>
										<td>${facility.f_closetime }</td>
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
