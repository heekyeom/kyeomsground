
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!------ Include the above in your HEAD tag ---------->
<!-- <script src='fullcalendar/lib/jquery.min.js'></script> -->


<div class="container">
	<div class="row">
        <div class="col-md-6  card mx-auto">
            <form id="fileForm" role="form">
            <fieldset><legend class="text-center"> ��׶���  <span class="req">ȸ������</span></legend>

              <div class="form-group">
                <label for="username"><span class="req">* </span> ���̵�:  </label> 
                    <input class="form-control" type="text" name="u_id" id = "txt" placeholder="�ּ� 6�ڸ� �̻� " required />  
                        <div id="errLast"></div>
            </div>

            <div class="form-group"> 	 
                <label for="firstname"><span class="req">* </span>  �̸� : </label>
                    <input class="form-control" type="text" name="u_name" id = "txt"  required /> 
                        <div id="errFirst"></div>    
            </div>

 			<div class="form-group">
                <label for="password"><span class="req">* </span> ��й�ȣ: </label>
                    <input required name="u_pwd" type="password" class="form-control inputpass" minlength="4" maxlength="16"  id="pass1" /> </p>

                <label for="password"><span class="req">* </span>  ��й�ȣ Ȯ��: </label>
                    <input required name="password" type="password" class="form-control inputpass" minlength="4" maxlength="16" placeholder="��й�ȣ�� �����ϰ� �Է��ϼ���."  id="pass2" />
                        <span id="confirmMessage" class="confirmMessage"></span>
            </div>
            
            <div class="form-group">
                <label for="email"><span class="req">* </span> �̸���: </label> 
                    <input class="form-control" required type="text" name="u_email" id = "email" />   
                        <div class="status" id="status"></div>
            </div>

         

           
            
            
             <div class="form-group">
            <label for="phonenumber"><span class="req">* </span> ��ȭ��ȣ: </label>
                    <input required type="text" name="u_tel" id="phone" class="form-control phone" maxlength="28" placeholder="not used for marketing"/> 
            </div>

            <div class="form-group">
            
                <?php //$date_entered = date('m/d/Y H:i:s'); ?>
                <input type="hidden" value="<?php //echo $date_entered; ?>" name="dateregistered">
                <input type="hidden" value="0" name="activate" />
                <hr>

            </div>

            <div class="form-group card mx-auto">
                <input class="btn btn-success" type="button" id="registersubmit" name="submit_reg" value="�����ϱ�">
            </div>
                     

            </fieldset>
            </form><!-- ends register form -->
        </div>
	</div>
</div>