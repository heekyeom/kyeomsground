
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!------ Include the above in your HEAD tag ---------->

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
       <h4 class="modal-title" id="myModalLabel">�����ϱ�</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
       
      </div>
      <div class="modal-body">
        
	<div class="row">
        <div class="col-md-10  card mx-auto">
            <form action="" method="post" id="fileForm" role="form">

              <div class="form-group">
                <label for="username"><span class="req">* </span>�����ڸ�:</label> 
                    <input class="form-control" type="text" name="username" id = "txt" onkeyup = "Validate(this)" placeholder="�ּ� 6�ڸ� �̻� " required />  
                        
                        <label for="username"><span class="req">* </span> ����� �ʴ�:  </label> 
                    <input class="form-control" type="text" name="username" id = "txt" onkeyup = "Validate(this)" placeholder="�ּ� 6�ڸ� �̻� " required />  
                        <div id="errLast"></div>
                        
            </div>

            <div class="form-group"> 	 
                <label for="firstname"><span class="req">* </span>  ���� : </label>
                    <input class="form-control" type="text" name="firstname" id = "txt" onkeyup = "Validate(this)" required /> 
                        <div id="errFirst"></div>    
            </div>

 			<div class="form-group">
                <label for="password"><span class="req">* </span> ����ð�: </label>
                    <input required name="password" type="password" class="form-control inputpass" minlength="4" maxlength="16"  id="pass1" /> </p>
            </div>
            

            </fieldset>
            </form><!-- ends register form -->


        </div>
   


</div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">���</button>
        <button type="button" class="btn btn-primary">�����ϱ�</button>
      </div>
    </div>
  </div>
</div>