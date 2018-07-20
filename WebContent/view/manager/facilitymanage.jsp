<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script src="js/kgfacility.js"></script>
<div class="container">

<form id="facilityform" style="padding-top: 30px;padding-bottom: 30px">
  <div class="form-group">
    <label for="exampleInputEmail1"> 시설 타입 </label>
    <select class="form-control" name="c_name">
  <option>축구장</option>
  <option>농구장</option>
  <option>테니스장</option>
  <option>배구장</option>
</select>
  </div>
  <div class="form-group">
    <label>시설 이름</label>
    <input type="text" class="form-control"  name="f_name" placeholder="시설이름">
  </div>
  
  <div class="form-group">
    <label>시설 주소</label>
    <input type="text" class="form-control" id=""name="f_address"  placeholder="시설 주소">
  </div>
   <div class="form-group">
    <label>시설 전화번호</label>
    <input type="text" class="form-control" id="" name="f_tel" placeholder="시설 전화번호">
  </div>
  
   <div class="form-group">
    <label>시설 가격</label>
    <input type="number" class="form-control" id="" name="f_price" placeholder="시설 가격">
  </div>
  <div class="form-group">
    <label>최대인원</label>
    <input type="number" class="form-control" id="" name="f_max" placeholder="최대인원">
  </div>
  
   <div class="form-group">
    <label>시작 시간</label>
    <input type="time" class="form-control" id="" name="f_opentime" placeholder="시작 시간">
  </div>
  
  <div class="form-group">
    <label>종료 시간</label>
    <input type="time" class="form-control" id=""  name="f_closetime" placeholder="종료 시간 ">
  </div>
  
  <!-- 오픈 시간 ~ 닫는 시간  -->
  
  <!-- 최대시간 -->
  
  
  
  
  <div class="form-group">
    <label for="exampleInputFile">파일 업로드</label>
    <input type="file" id="exampleInputFile" name="imgname">
  </div>
  <button id="facilityadd" type="submit" class="btn btn-default">제출</button>
</form>

</div>