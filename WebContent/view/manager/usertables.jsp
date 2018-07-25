<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<!-- Breadcrumbs-->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">사용자 관리</a></li>
			<li class="breadcrumb-item active">테이블</li>
		</ol>
		<!-- Example DataTables Card-->
		<div class="card mb-3">
			<div class="card-header">
				<i class="fa fa-table"></i> 사용자 목록
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
						<thead>
							<tr>
								<th>id</th>
								<th>name</th>
								<th>tel</th>
								<th>email</th>
								<th>delete</th>
							</tr>
						</thead>
						<!-- <tfoot>
							<tr>
								<th>id</th>
								<th>name</th>
								<th>tel</th>
								<th>email</th>
								<th>delete</th>
							</tr>
						</tfoot> -->
						<tbody>
							<c:if test="${userlist != null }">
								<c:forEach var="user" items="${userlist }">
									<tr>
										<td>${user.u_id }</td>
										<td>${user.u_name }</td>
										<td>${user.u_tel }</td>
										<td>${user.u_email }</td>
										<td><a href="deleteuserimpl.kg?u_id=${user.u_id }">삭제</a></td>
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
