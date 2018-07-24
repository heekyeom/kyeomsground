<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<script src="js/kgcategory.js"></script>

<div class="modal fade" id="categoryAddModal" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">종목 추가</h5>
				<button class="close" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<form id="categoryform"
				style="padding-top: 30px; padding-bottom: 30px">
				<div class="modal-body">
					<div class="container">
						
						<div class="form-group">
							<label>스포츠 종목</label> <input type="text" class="form-control"
								name="c_name" placeholder="타입">
						</div>

						<div class="form-group">
							<label>종목 색상</label> <input type="color" class="form-control"
								id="" name="c_color" placeholder="종목 색상">
						</div>
						

						<!-- 최대시간 -->

						<div class="form-group">
							<label for="exampleInputFile">파일 업로드</label> <input type="file"
								id="exampleInputFile" name="img">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					
					<button class="btn btn-primary" id="categoryadd" type="submit">추가</button>
					<button class="btn btn-secondary" type="reset"
						data-dismiss="modal">취소</button>
				</div>
			</form>
		</div>
	</div>
</div>