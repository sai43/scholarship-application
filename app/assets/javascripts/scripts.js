$("#essay-form").on("keydown", function() {
	var charCount = $("#essay-form").val().length;
	//The text in the p element with id char-limit is equivelent to num of chars
	$("#char-limit").html(charCount);
	console.log(charCount);
	if (charCount > 1000) {
		$("#char-limit").css("color", "red");
	} else {
		$("#char-limit").css("color", "black");
	}
});