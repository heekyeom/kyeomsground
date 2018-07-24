/**
 * 
 */

function register() {
	var c = confirm('등록 하시겠습니까?');
	if (c == true) {

		var form=$('#facilityform')[0];
		var data=new FormData(form);

		console.log(data);
		$.ajax({
			type : 'post',
			url : 'addFacilityimpl.kg',
			data : data,
			enctype: 'multipart/form-data',
			dataType: 'json',
	        processData: false,
	        contentType: false,
	        cache: false,
			success : function(data) {
				if (data == '1') {
					alert('등록이 완료되었습니다.');
					locate.href="facilitymanage.kg";
				} else {
					alert('Register Fail');
					locate.href="facilitymanage.kg";
				}
			},
			error : function() {
				alert('Register Fail');
			}
		});
	}
	;
}

$(function() {
	$('#facilityadd').click(function() {
		register();
	});
})