<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<!-- Breadcrumbs-->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">예약 관리</a></li>
			<li class="breadcrumb-item active">테이블</li>
		</ol>
		<!-- Example DataTables Card-->
		<div class="card mb-3">
			<div class="card-header">
				<i class="fa fa-table"></i> 예약 목록
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
						<thead>
							<tr>				
								<th>facility</th>
								<th>id</th>
								<th>date</th>
								<th>start</th>
								<th>end</th>
								<th>type</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>facility</th>
								<th>id</th>
								<th>date</th>
								<th>start</th>
								<th>end</th>
								<th>type</th>
							</tr>
						</tfoot>
						<tbody>
							<c:if test="${reservationlist != null }">
								<c:forEach var="reservation" items="${reservationlist }">
									<tr>
										<td>${reservation.f_name }</td>
										<td>${reservation.u_id }</td>
										<td>${reservation.r_date }</td>
										<td>${reservation.r_starttime }</td>
										<td>${reservation.r_endtime }</td>
										<td>${reservation.r_type }</td>
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
