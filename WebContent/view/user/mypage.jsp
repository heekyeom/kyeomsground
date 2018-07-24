<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
	<div class="col-3">
		<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist"
			aria-orientation="vertical">
			<a class="nav-link active" id="v-pills-home-tab" 
				href="mypage.kg" role="tab" 
				>MyPage</a> 
			<a class="nav-link"
				id="v-pills-profile-tab"  href="#v-pills-profile"
				role="tab">Profile</a>
			<a class="nav-link" id="v-pills-messages-tab" 
				href="myschedule.kg" role="tab" 
				>나의 일정</a> 
			<a class="nav-link"
				id="v-pills-settings-tab" 
				href="modify.kg" role="tab" 
				>회원정보</a>
		</div>
	</div>
	<div class="col-9">
		<div class="tab-content" id="v-pills-tabContent">
			<div class="tab-pane fade show active" id="v-pills-home"
				role="tabpanel" aria-labelledby="v-pills-home-tab">
				<%-- <c:choose>
					<c:when test="${mypagecenterpage != null}">
						<jsp:include page="${mypagecenterpage}.jsp"></jsp:include>
					</c:when>
					<c:otherwise>
						<jsp:include page="myschedule.jsp"></jsp:include>
					</c:otherwise>
				</c:choose> --%>
				<jsp:include page="${mypagecenterpage}.jsp"></jsp:include>
			</div>
		</div>
	</div>
</div>

