function getAlphabet(){
	var input = document.getElementById('inputAlphabet').value;

	$.ajax({
		method: "GET",
		dataType: "json",
		url: "/api/sipabet",
		contentType: "application/json; charset=UTF-8",
		data: JSON.stringify({
			"input" : input
		})
	})
	.done(function(){
		alert("success");
	})
	.fail(function(){
		alert("fail");
	})
}