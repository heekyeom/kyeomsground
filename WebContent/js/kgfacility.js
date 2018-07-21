/**
 * 
 */

function register() {
	var c = confirm('등록 하시겠습니까?');
	if (c == true) {

		var queryString = $("form[id=facilityform]").serialize();

		console.log(queryString);
		$.ajax({
			url : 'addFacilityimpl.kg',
			type : 'post',
			enctype:'multipart/form-data',
			processData: false,
			dataType : 'json',
			data : queryString,
			success : function(data) {
				if (data == '1') {
					alert('등록이 완료되었습니다.');
				} else {
					alert('Register Fail');
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