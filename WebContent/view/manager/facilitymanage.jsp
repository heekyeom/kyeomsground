<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script src="js/kgfacility.js"></script>
<div class="container">

<form id="facilityform" style="padding-top: 30px;padding-bottom: 30px">
  <div class="form-group">
    <label for="exampleInputEmail1"> �ü� Ÿ�� </label>
    <select class="form-control" name="c_name">
  <option>�౸��</option>
  <option>����</option>
  <option>�״Ͻ���</option>
  <option>�豸��</option>
</select>
  </div>
  <div class="form-group">
    <label>�ü� �̸�</label>
    <input type="text" class="form-control"  name="f_name" placeholder="�ü��̸�">
  </div>
  
  <div class="form-group">
    <label>�ü� �ּ�</label>
    <input type="text" class="form-control" id=""name="f_address"  placeholder="�ü� �ּ�">
  </div>
   <div class="form-group">
    <label>�ü� ��ȭ��ȣ</label>
    <input type="text" class="form-control" id="" name="f_tel" placeholder="�ü� ��ȭ��ȣ">
  </div>
  
   <div class="form-group">
    <label>�ü� ����</label>
    <input type="number" class="form-control" id="" name="f_price" placeholder="�ü� ����">
  </div>
  <div class="form-group">
    <label>�ִ��ο�</label>
    <input type="number" class="form-control" id="" name="f_max" placeholder="�ִ��ο�">
  </div>
  
   <div class="form-group">
    <label>���� �ð�</label>
    <input type="time" class="form-control" id="" name="f_opentime" placeholder="���� �ð�">
  </div>
  
  <div class="form-group">
    <label>���� �ð�</label>
    <input type="time" class="form-control" id=""  name="f_closetime" placeholder="���� �ð� ">
  </div>
  
  <!-- ���� �ð� ~ �ݴ� �ð�  -->
  
  <!-- �ִ�ð� -->
  
  
  
  
  <div class="form-group">
    <label for="exampleInputFile">���� ���ε�</label>
    <input type="file" id="exampleInputFile" name="imgname">
  </div>
  <button id="facilityadd" type="submit" class="btn btn-default">����</button>
</form>

</div>