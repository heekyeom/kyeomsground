<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<script src="js/kgcategory.js"></script>

<div class="modal fade" id="facilityAddModal" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<form id="categoryform"
				style="padding-top: 30px; padding-bottom: 30px">
				<div class="modal-body">
					<div class="container">
					
						<div class="form-group">
							<label>카테고리명</label> <input type="text" class="form-control"
								name="c_name" placeholder="카테고리명">
						</div>
						
						<div class="form-group">
							<label for="exampleInputFile">카테고리 색상 </label> <input type="color"
								id="exampleInputFile" name="c_color">
						</div>

						<div class="form-group">
							<label for="exampleInputFile">파일 업로드</label> <input type="file"
								id="exampleInputFile" name="c_img">
						</div>
						
						
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="reset"
						data-dismiss="modal">취소</button>
					<button class="btn btn-primary" id="categoryadd" type="submit">추가</button>
				</div>
			</form>
		</div>
	</div>
</div>
	