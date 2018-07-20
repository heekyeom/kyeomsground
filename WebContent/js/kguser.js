/**
 * 
 */

function register() {
	var c = confirm('가입 하시겠습니까?');
	if (c == true) {

		var queryString = $("form[id=fileForm]").serialize();

		console.log(queryString);
		$.ajax({
			url : 'registerimpl.kg',
			type : 'post',
			dataType : 'json',
			data : queryString,
			success : function(data) {
				if (data == '1') {
					location.href = 'main.kg';
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

function login() {
	var queryString = $("form[id=loginForm]").serialize();

	console.log(queryString);
	$.ajax({
		url : 'loginimpl.kg',
		type : 'post',
		dataType : 'json',
		data : queryString,
		success : function(data) {
			if (data == '1') {
				location.href = 'main.kg';
			} else {
				alert('Login Fail');
			}
		},
		error : function() {
			alert('Login Fail');
		}
	});
}



$(function() {
	$('#registersubmit').click(function() {
		register();
	});
	$('#loginsubmit').click(function() {
		login();
	});

})