<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<link rel='stylesheet' href='fullcalendar/fullcalendar.css' />
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.0/themes/cupertino/jquery-ui.css" rel="stylesheet"><!-- 검색결과list UI -->
<link href="./inputosaurus/inputosaurus.css" rel="stylesheet"><!-- 검색창 UI -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script><!-- 검색기능library -->
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
        	 console.log(startDate);
             $('#r_rstime').val(startDate._i[0]+'년 '+startDate._i[1]+'월 '+startDate._i[2]+'일 '+startDate._i[3]+'시   ~   '+endDate._i[0]+'년 '+endDate._i[1]+'월 '+endDate._i[2]+'일 '+endDate._i[3]+'시');
             $('#r_starttime').val(startDate);
             $('#r_endtime').val(endDate);
             
             $('#btn_reservation').click();
         },
         eventClick: function(calEvent, jsEvent, view) {
        	 alert('이미 예약된 시설입니다.');
         },
         events: data
         
       });
   }
   
   var u_idForm = $("form[id=idForm]").serialize();
   
   $.ajax({
      url : 'calendarimpl.kg',
      dataType: 'json',
      data: u_idForm,
      success : function(data) {
         drawCalendar(data);
      },
      error : function() {
         alert('error');
      }
   });
   
});

function checkAll() {
	
};

</script>

   <div id='calendar'></div>
   <button id="btn_reservation" type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" hidden="hidden"></button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
   aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <h4 class="modal-title" id="myModalLabel">일정예약</h4>
            <button type="button" class="close" data-dismiss="modal"
               aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>

         </div>
         <div class="modal-body">

            <div class="row">
               <div class="col-md-10  card mx-auto">
                  <form action="reservationimpl.kg" onsubmit="checkAll();" method="post" id="fileForm" role="form">

                     <div class="form-group">
                        <label for="username"><span class="req">* </span>
                        예약자</label> <input
                           class="form-control" type="text" name="username" id="u_name"
                             placeholder="예약자명" value="${user.u_name}" readonly="readonly" required />

                        <label for="username">
                        <span class="req">* </span> 
                           시설명 </label>
                       <input class="form-control" type="text" 
                       name="username" id="f_name" 
                         placeholder="예약시설" value="${facility.f_name}" readonly="readonly" required />
                        <div id="errLast"></div>

                     </div>

                     <div class="form-group">
                        <label for="firstname"><span class="req">* </span>
                         예약명
                        </label> <input class="form-control" type="text" name="r_title"
                           id="r_title" required />
                        <div id="errFirst"></div>
                     </div>

                     <div class="form-group">
                        <label for="password"><span class="req">* </span>
                         시설이용가능시간
                        </label> <input name="f_time" type="text"
                           class="form-control inputpass" minlength="4" maxlength="16"
                           id="f_time" value="매일 ${facility.f_opentime}시 부터  ~  ${facility.f_closetime}시 까지 이용가능" readonly="readonly"/>
                     </div>
                     
                     <div class="form-group">
                        <label for="password"><span class="req">* </span>
                         예약시간
                        </label> <input required name="r_rstime" type="text"
                           class="form-control inputpass" minlength="4" maxlength="16"
                           id="r_rstime" readonly="readonly" />
                     </div>
                     
                     <div class="form-group">
                      <span class="req">* </span>
                       경기 방식 선택
                         <fieldset>
                             <div>
                                 <input type="radio" id="r_type_public" name="r_type" value="public" checked />
                                 <label for="r_type_public">
                                 공개</label>&nbsp;&nbsp;&nbsp;
                                 <input type="radio" id="r_type_private" name="r_type" value="private" />
                                 <label for="r_type_private">
                                 비공개</label>
                             </div>
                         </fieldset>
                     </div>
<!--  -->
               <div class="form-group">
                        <label for="firstname"><span class="req">* </span> 초대
                        </label> <div></div> <input class="form-control" type="text" name="widget2"
                           id="widget2"   />
                        <div id="errFirst"></div>
                     </div>
               <div class="markup">
               
	               <input type="hidden" id="r_starttime" name="r_starttime">
	               <input type="hidden" id="r_endtime" name="r_endtime">
	               <input type="hidden" id="u_id" name="u_id" value="${user.u_id }">
	               <input type="hidden" id="f_num" name="f_num" value="${facility.f_num }">
               
        	   </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script><!-- 검색기능library -->
    <script src="./inputosaurus/inputosaurus.js"></script><!-- inputsaurus에서 가져오기 -->
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
            <button type="submit" class="btn btn-primary" >예약하기</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
         </div>
                  </form>
                  <!-- ends register form -->
		<form action="" id="idForm">
			<input type="hidden" id="ff_num" name="ff_num" value="${facility.f_num}">
		</form>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>