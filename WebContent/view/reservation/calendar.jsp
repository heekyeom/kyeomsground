<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<link rel='stylesheet' href='fullcalendar/fullcalendar.css' />
<script src='fullcalendar/lib/jquery.min.js'></script>
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
	          alert(startDate);
	          alert(endDate);
	          $('#btn_reservation').click();
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
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
       <h4 class="modal-title" id="myModalLabel">예약하기</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
       
      </div>
      <div class="modal-body">
        
	<div class="row">
        <div class="col-md-10  card mx-auto">
            <form action="" method="post" id="fileForm" role="form">

              <div class="form-group">
                <label for="username"><span class="req">* </span>예약자명:</label> 
                    <input class="form-control" type="text" name="username" id = "txt" onkeyup = "Validate(this)" placeholder="최소 6자리 이상 " required />  
                        
                        <label for="username"><span class="req">* </span> 사용자 초대:  </label> 
                    <input class="form-control" type="text" name="username" id = "txt" onkeyup = "Validate(this)" placeholder="최소 6자리 이상 " required />  
                        <div id="errLast"></div>
                        
            </div>

            <div class="form-group"> 	 
                <label for="firstname"><span class="req">* </span>  팀명 : </label>
                    <input class="form-control" type="text" name="firstname" id = "txt" onkeyup = "Validate(this)" required /> 
                        <div id="errFirst"></div>    
            </div>

 			<div class="form-group">
                <label for="password"><span class="req">* </span> 예약시간: </label>
                    <input required name="password" type="password" class="form-control inputpass" minlength="4" maxlength="16"  id="pass1" /> </p>
            </div>
            
            </form><!-- ends register form -->

        </div>
   
</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        <button type="button" class="btn btn-primary">예약하기</button>
      </div>
    </div>
  </div>
</div>
