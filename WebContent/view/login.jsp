
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">·Î±×ÀÎ</h5>
				<button class="close" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">¡¿</span>
				</button>
			</div>
			<form class="form-signin" id="loginForm">
				<span id="reauth-email" class="reauth-email"></span> 
				<input type="text" id="inputId" class="form-control" name="id"
					placeholder="ID" required autofocus> 
				<input type="password" id="inputPassword" class="form-control"
					placeholder="Password" name="pwd" required>
				
				<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
				<button class="btn btn-primary" type ="button" id="loginsubmit">Login</button>
			</form>
		</div>
	</div>
</div>