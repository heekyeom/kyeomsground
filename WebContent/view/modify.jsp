
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
	<div class="row">
        <div class="col-md-6  card mx-auto">
            <form action="" method="post" id="fileForm" role="form">
            <fieldset><legend class="text-center"> 겸그라운드  <span class="req">회원 수정</span></legend>

 			<fieldset disabled>
              <div class="form-group">
                <label for="username"><span class="req">* </span> 아이디:  </label> 
                    <input class="form-control" type="text" name="username" id ="disabledTextInput" placeholder="USER">  
                        <div id="errLast"></div>
            </div>
            </fieldset>

            <div class="form-group"> 	 
                <label for="firstname"><span class="req">* </span>  이름 : </label>
                    <input class="form-control" type="text" name="firstname" id = "txt" onkeyup = "Validate(this)" required /> 
                        <div id="errFirst"></div>    
            </div>

 			<div class="form-group">
                <label for="password"><span class="req">* </span> 비밀번호: </label>
                    <input required name="password" type="password" class="form-control inputpass" minlength="4" maxlength="16"  id="pass1" /> </p>

                <label for="password"><span class="req">* </span>  비밀번호 확인: </label>
                    <input required name="password" type="password" class="form-control inputpass" minlength="4" maxlength="16" placeholder="비밀번호를 동일하게 입력하세요."  id="pass2" onkeyup="checkPass(); return false;" />
                        <span id="confirmMessage" class="confirmMessage"></span>
            </div>
            
            <div class="form-group">
                <label for="email"><span class="req">* </span> 이메일: </label> 
                    <input class="form-control" required type="text" name="email" id = "email"  onchange="email_validate(this.value);" />   
                        <div class="status" id="status"></div>
            </div>

         

           
            
            
             <div class="form-group">
            <label for="phonenumber"><span class="req">* </span> 전화번호: </label>
                    <input required type="text" name="phonenumber" id="phone" class="form-control phone" maxlength="28" onkeyup="validatephone(this);" placeholder="not used for marketing"/> 
            </div>

            <div class="form-group">
            
                <?php //$date_entered = date('m/d/Y H:i:s'); ?>
                <input type="hidden" value="<?php //echo $date_entered; ?>" name="dateregistered">
                <input type="hidden" value="0" name="activate" />
                <hr>

            </div>

            <div class="form-group card mx-auto">
                <input class="btn btn-success" type="submit" name="submit_reg" value="수정하기">
            </div>
            
                     

            </fieldset>
            </form><!-- ends register form -->


        </div>
   


	</div>
</div>