<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
	<div class="col-3">
		<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist"
			aria-orientation="vertical">
			<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill"
				href="#v-pills-home" role="tab" aria-controls="v-pills-home"
				aria-selected="true">MyPage</a> <a class="nav-link"
				id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile"
				role="tab" aria-controls="v-pills-profile" aria-selected="false">Profile</a>
			<a class="nav-link" id="v-pills-messages-tab" data-toggle="pill"
				href="#v-pills-messages" role="tab" aria-controls="v-pills-messages"
				aria-selected="false">나의 일정</a> <a class="nav-link"
				id="v-pills-settings-tab" data-toggle="pill"
				href="#v-pills-settings" role="tab" aria-controls="v-pills-settings"
				aria-selected="false">회원정보</a>
		</div>
	</div>
	<div class="col-9">
		<div class="tab-content" id="v-pills-tabContent">
			<div class="tab-pane fade show active" id="v-pills-home"
				role="tabpanel" aria-labelledby="v-pills-home-tab">
				<c:choose>
					<c:when test="${mypagecenterpage != null}">
						<jsp:include page="${mypagecenterpage}.jsp"></jsp:include>
					</c:when>
					<c:otherwise>
						<jsp:include page="../reservation/calendar.jsp"></jsp:include>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</div>

