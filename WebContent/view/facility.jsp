<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style></style>
<script></script>

</head>
<body>
   <!-- Page Content -->
   <div class="container">

      <!-- Page Heading -->
      <h1 class="my-4">
         Page Heading <small>Secondary Text</small>
      </h1>
      <c:if test="${flist!= null}">
      <c:forEach var="item" items="${flist}">
         <!-- 공공 운동시설 하나 -->
         <div class="row">
            <div class="col-md-7">
               <a href="#"> <img class="img-fluid rounded mb-3 mb-md-0"
                  src="http://placehold.it/300x300" alt="" align=left vspace=0
                  hspace=30>
               </a>
            </div>

            <div class="col-md-5">

               <h3>${item.f_name} 축구장</h3>
               <p>설명~~~~~~~</p>
               <h3>시간 : ${item.f_opentime} -${item.f_closetime}</h3>
               <h3>가격: ${f_price}</h3>
               <h3>위치: ${f_address} </h3>
               <form action="" method="">
                  <input type="button" name="reserve1" value="버튼예약"></input> <input
                     type="submit" name="reserve2" value="서밋예약"></input>
               </form>
               <a class="btn btn-primary" href="#">링크버튼예약</a>

            </div>
            <br>
         </div>
      </c:forEach>
      </c:if>
   </div>
</body>
