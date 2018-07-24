<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<link rel='stylesheet' href='fullcalendar/fullcalendar.css' />
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.0/themes/cupertino/jquery-ui.css" rel="stylesheet"><!-- �˻����list UI -->
<link href="./inputosaurus/inputosaurus.css" rel="stylesheet"><!-- �˻�â UI -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script><!-- �˻����library -->
<script src='fullcalendar/lib/moment.min.js'></script>
<script src='fullcalendar/fullcalendar.js'></script>
<script src='fullcalendar/locale-all.js'></script>

<script>

$(function() {
   
   function drawCalendar(data) {
      
     $('#calendar').fullCalendar({ 
         header: { 
           left: 'prev,next today', 
           center: 'title', 
           right: 'month,agendaWeek,agendaDay,listWeek' 
         }, 
         navLinks: true, // can click day/week names to navigate views 
         editable: false,
         eventLimit: true, // allow "more" link when too many events 
         defaultView: 'agendaWeek',
         locale: 'kr',
         selectable: true,
         selectHelper: true,
         slotDuration: '01:00:00',
         slotLabelFormat: 'h(:mm)a',
         /* minTime: '00:00:00',
         maxTime: '24:00:00', */
         select: function(startDate, endDate, jsEvent, view) {
             //alert('selected ' + startDate.format() + ' to ' + endDate.format());
             //alert(startDate);
             //alert(endDate);
             $('#btn_reservation').click();
             // ���⿡ ������ ��� �����ϸ��!
         },
         eventClick: function(calEvent, jsEvent, view) {
        	 alert('�̹� ����� �ü��Դϴ�.');
         },
         events: data
         
       });
   }

   $.ajax({						// ���� form�ȿ� �Է��Ѱ͵� ����ϸ� �ʱ�ȭ�� ����ߵǳ�?
      url : 'calendarimpl.kg',
      success : function(data) {
         drawCalendar(data);
      },
      error : function() {
         alert('error');
      }
   });
   
   /* var u_idForm = $("form[id=idForm]").serialize(); // �� ������ �ʿ��� ���� ������..

   $.ajax({
      url : 'myscheduleimpl.kg',
      dataType: 'json',
      data : u_idForm,
      success : function(data) {
         drawCalendar(data);
      },
      error : function() {
         alert('error');
      }
   }); */

});

</script>

   <div id='calendar'></div>
   <button id="btn_reservation" type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" hidden="hidden"></button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
   aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <h4 class="modal-title" id="myModalLabel">��������</h4>
            <button type="button" class="close" data-dismiss="modal"
               aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>

         </div>
         <div class="modal-body">

            <div class="row">
               <div class="col-md-10  card mx-auto">
                  <form action="calendarimpl.kg" method="post" id="fileForm" role="form">

                     <div class="form-group">
                        <label for="username"><span class="req">* </span>
                        ������</label> <input
                           class="form-control" type="text" name="username" id="u_name"
                           onkeyup="Validate(this)" placeholder="�����ڸ� " value="${user.u_name}" readonly="readonly" required />

                        <label for="username">
                        <span class="req">* </span> 
                           ����ü� </label>
                       <input class="form-control" type="text" 
                       name="username" id="f_name" 
                       onkeyup="Validate(this)" placeholder="����ü��� �ڵ� " value="${facility.f_name}" readonly="readonly" required />
                        <div id="errLast"></div>

                     </div>

                     <div class="form-group">
                        <label for="firstname"><span class="req">* </span>
                         �����
                        </label> <input class="form-control" type="text" name="firstname"
                           id="r_title" onkeyup="Validate(this)" required />
                        <div id="errFirst"></div>
                     </div>

                     <div class="form-group">
                        <label for="password"><span class="req">* </span>
                         �ü��̿밡�ɽð�
                        </label> <input name="firstname" type="text"
                           class="form-control inputpass" minlength="4" maxlength="16"
                           id="f_time" value="${facilities.f_time}" readonly="readonly"/>
                     </div>
                     
                     <div class="form-group">
                        <label for="password"><span class="req">* </span>
                         ����ð�
                        </label> <input required name="password" type="text"
                           class="form-control inputpass" minlength="4" maxlength="16"
                           id="r_time" value="${reservation.r_time}" readonly="readonly"/>
                     </div>
                     
                     <div class="form-group">
                      <span class="req">* </span>
                       ��� ��� ����
                         <fieldset>
                             <div>
                                 <input type="radio" id="r_type_public" name="type" value="true" checked />
                                 <label for="r_type_public">
                                 ����</label>&nbsp;&nbsp;&nbsp;
                                 <input type="radio" id="r_type_private" name="type" value="false" />
                                 <label for="r_type_private">
                                 �����</label>
                             </div>
                         </fieldset>
                     </div>
<!--  -->
               <div class="form-group">
                        <label for="firstname"><span class="req">* </span> �ʴ�
                        </label> <input class="form-control" type="text" name="firstname"
                           id="widget2" onkeyup="Validate(this)" />
                        <div id="errFirst"></div>
                     </div>
               <div class="markup">
         </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script><!-- �˻����library -->
    <script src="./inputosaurus/inputosaurus.js"></script><!-- inputsaurus���� �������� -->
   <script>
      function usergetAll(userlist) {
  		
  		var data = userlist.split('"');
  		
  	      $('#widget2').inputosaurus({
  	         width : '350px',
  	         autoCompleteSource : data,
  	         activateFinalResult : true,
  	         change : function(ev){
  	            $('#widget2_reflect').val(ev.target.value);
  	         }
  	      });
      }
  	
  	  $.ajax({
  	      url : 'usergetall.kg',
  	      success : function(data) {
  	    	  usergetAll(data);
  	      },
  	      error : function() {
  	         alert('error');
  	      }
  	  });
  	
   </script>
<!--  -->
         <div class="modal-footer">
            <button type="submit" class="btn btn-primary" >�����ϱ�</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">���</button>
         </div>
                  </form>
                  <!-- ends register form -->
		<%-- <form action="" id="idForm">
			<input type="hidden" id="u_id" name="u_id" value="${user.u_id}">
		</form> --%>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>