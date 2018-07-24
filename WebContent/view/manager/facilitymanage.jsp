<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<script src="js/kgfacility.js"></script>

<div class="modal fade" id="facilityAddModal" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">시설 추가</h5>
				<button class="close" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<form id="facilityform"
				style="padding-top: 30px; padding-bottom: 30px">
				<div class="modal-body">
					<div class="container">
						<div class="form-group">
							<label for="exampleInputEmail1"> 시설 타입 </label> <select
								class="form-control" name="c_name">
								<c:if test="${categorylist != null }">
								<c:forEach var="item" items="${categorylist }">
									<option>${item.c_name }</option>
								</c:forEach>
								</c:if>
							</select>
						</div>
						<div class="form-group">
							<label>시설 이름</label> <input type="text" class="form-control"
								name="f_name" placeholder="시설이름">
						</div>

						<div class="form-group">
							<label>시설 주소</label> <input type="text" class="form-control"
								id="" name="f_address" placeholder="시설 주소">
						</div>
						<div class="form-group">
							<label>시설 전화번호</label> <input type="text" class="form-control"
								id="" name="f_tel" placeholder="시설 전화번호">
						</div>

						<div class="form-group">
							<label>시설 가격</label> <input type="number" class="form-control"
								id="" name="f_price" placeholder="시설 가격">
						</div>
						<div class="form-group">
							<label>최대인원</label> <input type="number" class="form-control"
								id="" name="f_max" placeholder="최대인원">
						</div>

						<div class="form-group">
							<label>시작 시간</label> <input type="time" class="form-control"
								id="" name="f_opentime" placeholder="시작 시간">
						</div>

						<div class="form-group">
							<label>종료 시간</label> <input type="time" class="form-control"
								id="" name="f_closetime" placeholder="종료 시간 ">
						</div>

						<!-- 오픈 시간 ~ 닫는 시간  -->

						<div class="form-group">
							<label>종료 시간</label> <input type="number" class="form-control"
								id="" name="f_maxtime" placeholder="1회 이용 시간">
						</div>
						<!-- 최대시간 -->

						<div class="form-group">
							<label for="exampleInputFile">파일 업로드</label> <input type="file"
								id="exampleInputFile" name="img">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="reset"
						data-dismiss="modal">취소</button>
					<button class="btn btn-primary" id="facilityadd" type="submit">추가</button>
				</div>
			</form>
		</div>
	</div>
</div>