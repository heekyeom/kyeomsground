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
	      /* select: function(startDate, endDate, jsEvent, view) {
	          //alert('selected ' + startDate.format() + ' to ' + endDate.format());
	          alert(startDate);
	          alert(endDate);
	      }, */
	      eventClick: function(calEvent, jsEvent, view) {

	    	    alert('Event: ' + calEvent.title);
	    	    alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
	    	    alert('View: ' + view.name);

	    	    // change the border color just for fun
	    	    $(this).css('border-color', 'red');

	      },
	      
	      events: [ 
	        { 
	          title: 'All Day Event', 
	          start: '2018-07-01', 
	        }, 
	        { 
	          title: 'Long Event', 
	          start: '2018-07-07', 
	          end: '2018-07-10' 
	        }, 
	        { 
	          id: 999, 
	          title: 'Repeating Event', 
	          start: '2018-07-09T16:00:00' 
	        }, 
	        { 
	          id: 999, 
	          title: 'Repeating Event', 
	          start: '2018-07-16T16:00:00' 
	        }, 
	        { 
	          title: 'Conference', 
	          start: '2018-07-11', 
	          end: '2018-07-13' 
	        }, 
	        { 
	          title: 'Meeting', 
	          start: '2018-07-12T10:30:00', 
	          end: '2018-07-12T12:30:00' 
	        }, 
	        { 
	          title: 'Lunch', 
	          start: '2018-07-12T12:00:00' 
	        }, 
	        { 
	          title: 'Meeting', 
	          start: '2018-07-12T14:30:00' 
	        }, 
	        { 
	          title: 'Happy Hour', 
	          start: '2018-07-12T17:30:00' 
	        }, 
	        { 
	          title: 'Dinner', 
	          start: '2018-07-12T20:00:00' 
	        }, 
	        { 
	          title: 'Birthday Party', 
	          start: '2018-07-13T07:00:00', 
	          end: '2018-07-13T09:00:00' 
	        }, 
	        { 
	          title: 'Click for Google', 
	          url: 'http://google.com/', 
	          start: '2018-07-28' 
	        } 
	      ] 
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

