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
         navLinks: true, // can click day/week names to navigate views 
         editable: false,
         eventLimit: true, // allow "more" link when too many events 
         defaultView: 'agendaWeek',
         locale: 'kr',
         selectable: false,
         selectHelper: false,
         //width: 650,
         //height: 701,
         slotDuration: '01:00:00',
         slotLabelFormat: 'h(:mm)a',
         /* minTime: '00:00:00',
         maxTime: '24:00:00', */
         //contentHeight: 600,
         
         eventClick: function(calEvent, jsEvent, view) {

        	 $('#r_num').val(calEvent.r_num);
        	 
        	 $('#btn_reservation').click();
        	 //alert(calEvent.start);
        	 //alert(calEvent.end);

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
                        <label for="username"><span class="req">* </span>
                        예약자</label> <input
                           class="form-control" type="text" name="username" id="u_name"
                           onkeyup="Validate(this)" placeholder="예약자명 " value="${user.u_name}" readonly="readonly" required />

                        <label for="username">
                        <span class="req">* </span> 
                           예약시설 </label>
                       <input class="form-control" type="text" 
                       name="username" id="f_name" 
                       onkeyup="Validate(this)" placeholder="예약시설이 자동 " value="${facility.f_name}" readonly="readonly" required />
                        <div id="errLast"></div>

                     </div>

                     <div class="form-group">
                        <label for="firstname"><span class="req">* </span>
                         예약명
                        </label> <input class="form-control" type="text" name="firstname"
                           id="r_title" onkeyup="Validate(this)" required readonly="readonly" />
                        <div id="errFirst"></div>
                     </div>

                     <div class="form-group">
                        <label for="password"><span class="req">* </span>
                         시설이용가능시간
                        </label> <input name="firstname" type="text"
                           class="form-control inputpass" minlength="4" maxlength="16"
                           id="f_time" value="${facilities.f_time}" readonly="readonly"/>
                     </div>
                     
                     <div class="form-group">
                        <label for="password"><span class="req">* </span>
                         예약시간
                        </label> <input required name="password" type="text"
                           class="form-control inputpass" minlength="4" maxlength="16"
                           id="r_time" value="${reservation.r_time}" readonly="readonly"/>
                     </div>
                     
                     <div class="form-group">
                      <span class="req">* </span>
                       경기 방식 선택
                         <fieldset>
                             <div>
                                 <input type="radio" id="r_type_public" name="type" value="true" />
                                 <label for="r_type_public">
                                 공개</label>&nbsp;&nbsp;&nbsp;
                                 <input type="radio" id="r_type_private" name="type" value="false" />
                                 <label for="r_type_private">
                                 비공개</label>
                             </div>
                         </fieldset>
                     </div>
<!--  -->
               <div class="form-group">
                        <label for="firstname"><span class="req">* </span> 초대
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
         <div class="modal-footer">
            <button type="submit" class="btn btn-primary" >예약취소</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
         </div>
         <input type="hidden" id="r_num" name="r_num">
                  </form>
                  <!-- ends register form -->

               </div>
            </div>
         </div>
      </div>
   </div>
</div>