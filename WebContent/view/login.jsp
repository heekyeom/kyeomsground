<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
	<script language="JavaScript">
//<!--
function CheckEnter(frm, objName, increNum )
{
        var keycode = event.keyCode;        
        var i = 0;
   
        if( keycode == 13 ){
            for( i = 0; i < frm.length; ++i ){
	  if( objName.name == frm[i].name )
                      break;
            }
            i+= increNum;
            frm[i].focus();
         }
}
//-->
</script>
	
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">�α���</h5>
				<button class="close" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">��</span>
				</button>
			</div>
			<form class="form-signin" id="loginForm">
				<span id="reauth-email" class="reauth-email"></span> 
				<input type="text" id="inputId" class="form-control" name="id"
					placeholder="ID" OnKeyDown="CheckEnter(this.form,this,1)" required autofocus > 
				<input type="password" OnKeyDown="CheckEnter(this.form,this,2)" id="inputPassword" class="form-control"
					placeholder="Password" name="pwd" required>
				
				<button class="btn btn-secondary" type="button" data-dismiss="modal" style="float:right">Cancel</button>
				<button class="btn btn-primary" type ="button" id="loginsubmit" style="float:right">Login</button>
			</form>
		</div>
	</div>
</div>