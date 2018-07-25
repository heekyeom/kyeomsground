
function register() {
	
	var c = confirm('등록 하시겠습니까?');
	if (c == true) {
		
		var form=$('#categoryform')[0];
		var data=new FormData(form);
		
		$.ajax({
			type : 'post',
			url : 'categoryaddimpl.kg',
			data : data,
			enctype: 'multipart/form-data',
			dataType: 'json',
	        processData: false,
	        contentType: false,
	        cache: false,
			success : function(data) {
				console.log(data);
				if (data == '1') {
					alert('등록이 완료되었습니다.');
				} else {
					alert('등록 실패했습니다.');
				}
			},
			error : function() {
				alert('등록 에러');
			}
		});
	}
	;
}

$(function() {
	$('#categoryadd').click(function() {
		register();
	});
})
