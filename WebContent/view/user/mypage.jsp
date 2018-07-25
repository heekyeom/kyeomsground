<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
	<div class="col-3">
		<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist"
			aria-orientation="vertical">
			<a class="nav-link" id="v-pills-messages-tab" 
				href="myschedule.kg" role="tab" 
				>나의 일정</a>
			<a class="nav-link" id="v-pills-messages-tab" 
				href="profile.kg" role="tab" 
				>프로필</a> 
			<a class="nav-link"
				id="v-pills-settings-tab" 
				href="modify.kg" role="tab" 
				>회원정보수정</a>
		</div>
	</div>
	<div class="col-9">
		<div class="tab-content" id="v-pills-tabContent">
			<div class="tab-pane fade show active" id="v-pills-home"
				role="tabpanel" aria-labelledby="v-pills-home-tab">
				<jsp:include page="${mypagecenterpage}.jsp"></jsp:include>
			</div>
		</div>
	</div>
</div>

