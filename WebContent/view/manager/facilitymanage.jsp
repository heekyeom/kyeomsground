<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<script src="js/kgfacility.js"></script>
<div class="modal fade" id="facilityAddModal" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">�ü� �߰�</h5>
				<button class="close" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">��</span>
				</button>
			</div>
			<form id="facilityform"
				style="padding-top: 30px; padding-bottom: 30px">
				<div class="modal-body">
					<div class="container">
						<div class="form-group">
							<label for="exampleInputEmail1"> �ü� Ÿ�� </label> <select
								class="form-control" name="c_name">
								<option>FOOTBALL</option>
								<option>����</option>
								<option>�״Ͻ���</option>
								<option>�豸��</option>
							</select>
						</div>
						<div class="form-group">
							<label>�ü� �̸�</label> <input type="text" class="form-control"
								name="f_name" placeholder="�ü��̸�">
						</div>

						<div class="form-group">
							<label>�ü� �ּ�</label> <input type="text" class="form-control"
								id="" name="f_address" placeholder="�ü� �ּ�">
						</div>
						<div class="form-group">
							<label>�ü� ��ȭ��ȣ</label> <input type="text" class="form-control"
								id="" name="f_tel" placeholder="�ü� ��ȭ��ȣ">
						</div>

						<div class="form-group">
							<label>�ü� ����</label> <input type="number" class="form-control"
								id="" name="f_price" placeholder="�ü� ����">
						</div>
						<div class="form-group">
							<label>�ִ��ο�</label> <input type="number" class="form-control"
								id="" name="f_max" placeholder="�ִ��ο�">
						</div>

						<div class="form-group">
							<label>���� �ð�</label> <input type="time" class="form-control"
								id="" name="f_opentime" placeholder="���� �ð�">
						</div>

						<div class="form-group">
							<label>���� �ð�</label> <input type="time" class="form-control"
								id="" name="f_closetime" placeholder="���� �ð� ">
						</div>

						<!-- ���� �ð� ~ �ݴ� �ð�  -->

						<div class="form-group">
							<label>���� �ð�</label> <input type="number" class="form-control"
								id="" name="f_maxtime" placeholder="1ȸ �̿� �ð�">
						</div>
						<!-- �ִ�ð� -->

						<div class="form-group">
							<label for="exampleInputFile">���� ���ε�</label> <input type="file"
								id="exampleInputFile" name="img">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="reset"
						data-dismiss="modal">���</button>
					<button class="btn btn-primary" id="facilityadd" type="submit">�߰�</button>
				</div>
			</form>
		</div>
	</div>
</div>