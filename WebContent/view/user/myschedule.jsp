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
      
     // page is now ready, initialize the calendar...

     $('#calendar').fullCalendar({ 
         header: { 
           left: 'prev,next today', 
           center: 'title', 
           right: 'month,agendaWeek,agendaDay,listWeek' 
         }, 
         //defaultDate: '2018-03-12', 현재 날짜로 바꿔 주려면 new Date() 사용한다.
         navLinks: true, // can click day/week names to navigate views 
         editable: true, 
         eventLimit: true, // allow "more" link when too many events 
         defaultView: 'agendaWeek',
         locale: 'kr',
         selectable: true,
         selectHelper: true,
         //width: 650,
         height: 701,
         slotDuration: '01:00:00',
         /* minTime: '00:00:00',
         maxTime: '24:00:00', */
         //contentHeight: 600,
         
         /* dayClick: function(date, jsEvent, view, resourceObj) {

              alert('Clicked on: ' + date.format());

              alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);

              alert('Current view: ' + view.name);
              
              alert('Resource ID: ' + resourceObj.id);

         }, */
         select: function(startDate, endDate, jsEvent, view) {
             //alert('selected ' + startDate.format() + ' to ' + endDate.format());
             //alert(startDate);
             //alert(endDate);
             $('#btn_reservation').click();
             //여기!!
         },
         eventClick: function(calEvent, jsEvent, view) {

              alert('Event: ' + calEvent.title);
              alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
              alert('View: ' + view.name);

              // change the border color just for fun
              $(this).css('border-color', 'yellow');

         },
         events: data
         
       });
   }


   $.ajax({
      url : 'calendarimpl.kg',
      success : function(data) {
         drawCalendar(data);
      },
      error : function() {
         alert('error');
      }
   });  

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
            <h4 class="modal-title" id="myModalLabel">일정예약</h4>
            <button type="button" class="close" data-dismiss="modal"
               aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>

         </div>
         <div class="modal-body">

            <div class="row">
               <div class="col-md-10  card mx-auto">
                  <form action="" method="post" id="fileForm" role="form">

                     <div class="form-group">
                        <label for="username"><span class="req">* </span>예약자ID:</label> <input
                           class="form-control" type="text" name="username" id="txt2"
                           onkeyup="Validate(this)" placeholder="예약자명 " value="${user.u_name}" readonly="readonly" required />

                        <label for="username">
                        <span class="req">* </span> 
                           예약시설 : </label>
                       <input class="form-control" type="text" 
                       name="username" id="txt3" 
                       onkeyup="Validate(this)" placeholder="예약시설이 자동 " value="${facility.f_name}" readonly="readonly" required />
                        <div id="errLast"></div>

                     </div>

                     <div class="form-group">
                        <label for="firstname"><span class="req">* </span> 예약명 :
                        </label> <input class="form-control" type="text" name="firstname"
                           id="txt1" onkeyup="Validate(this)" required />
                        <div id="errFirst"></div>
                     </div>

                     <div class="form-group">
                        <label for="password"><span class="req">* </span> 시설이용가능시간:
                        </label> <input name="firstname" type="text"
                           class="form-control inputpass" minlength="4" maxlength="16"
                           id="pass1" value="${facilities.f_time}" readonly="readonly"/>
                     </div>
                     
                     <div class="form-group">
                        <label for="password"><span class="req">* </span> 예약시간:
                        </label> <input required name="password" type="text"
                           class="form-control inputpass" minlength="4" maxlength="16"
                           id="pass1" value="${reservation.r_time}" readonly="readonly"/>
                     </div>
                     
                     <div class="form-group">
                        <label for="password"><span class="req">* </span> 공개/비공개여부 :
                        </label> <input required name="password" type="radio"
                           class="form-control inputpass" minlength="4" maxlength="16"
                           id="pass1" />
                     </div>
<!--  -->
               <div class="form-group">
         
                        <label for="firstname"><span class="req">* </span> 초대 :
                        </label> <input class="form-control" type="text" name="firstname"
                           id="widget2" onkeyup="Validate(this)" />
                        <div id="errFirst"></div>
                     </div>
         
               <div class="markup">
         </div>
   

    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script><!-- 검색기능library -->
    <script src="./inputosaurus/inputosaurus.js"></script><!-- inputsaurus에서 가져오기 -->
   <script>
      $('#widget2').inputosaurus({
         width : '350px',
         autoCompleteSource : ['김희겸', '손영우', '서태한', '윤석현', 'new york','aaaa','ㅁㅁㅁ','김손서윤'],
         activateFinalResult : true,
         change : function(ev){
            $('#widget2_reflect').val(ev.target.value);
         }
      });
   </script>
<!--  -->
                  </form>
                  <!-- ends register form -->

               </div>

            </div>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-primary" >예약하기</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
         </div>
      </div>
   </div>
</div>