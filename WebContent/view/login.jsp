
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">로그인</h5>
				<button class="close" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<form class="form-signin">
				<span id="reauth-email" class="reauth-email"></span> <input
					type="email" id="inputEmail" class="form-control"
					placeholder="Email address" required autofocus> <input
					type="password" id="inputPassword" class="form-control"
					placeholder="Password" required>
				<div id="remember" class="checkbox">
					<label> <input type="checkbox" value="remember-me">
						자동로그인
					</label>
				</div>
				<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
				<a class="btn btn-primary" href="login.html">Login</a>
			</form>
		</div>
	</div>
</div>