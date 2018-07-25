<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container">
	<div class="row">
        <div class="col-md-6  card mx-auto">
            <form action="" method="post" id="fileForm" role="form">
            <fieldset><legend class="text-center"> 겸스그라운드  <span class="req">회원 프로필</span></legend>

 			<fieldset disabled>
              <div class="form-group">
                <label for="username"><span class="req">* </span> 아이디:  </label> 
                    <input class="form-control" type="text" name="username" id ="disabledTextInput" placeholder="${user.u_id }">  
                        <div id="errLast"></div>
            </div>
            

            <div class="form-group"> 	 
                <label for="firstname"><span class="req">* </span>  이름 : </label>
                    <input class="form-control" type="text" name="firstname" id = "txt" onkeyup = "Validate(this)" required placeholder="${user.u_name }"/> 
                        <div id="errFirst"></div>    
            </div>

 			<div class="form-group">
                <label for="password"><span class="req">* </span> 비밀번호: </label>
                    <input required name="password" type="password" class="form-control inputpass" minlength="4" maxlength="16"  id="pass1" placeholder="********"/> </p>

            </div>
            
            <div class="form-group">
                <label for="email"><span class="req">* </span> 이메일: </label> 
                    <input class="form-control" required type="text" name="email" id = "email"  onchange="email_validate(this.value);" placeholder="${user.u_email }"/>   
                        <div class="status" id="status"></div>
            </div>

             <div class="form-group">
            <label for="phonenumber"><span class="req">* </span> 전화번호: </label>
                    <input required type="text" name="phonenumber" id="phone" class="form-control phone" maxlength="28" onkeyup="validatephone(this);" placeholder="${user.u_tel }"/> 
            </div>

            <div class="form-group">
            
                <?php //$date_entered = date('m/d/Y H:i:s'); ?>
                <input type="hidden" value="<?php //echo $date_entered; ?>" name="dateregistered">
                <input type="hidden" value="0" name="activate" />
                <hr>

            </div>

            
            </fieldset>
            </fieldset>
            </form><!-- ends register form -->

        </div>
   
	</div>
</div>