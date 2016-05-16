/*List of Available Tags for jquery autocomplete*/
var availableTags = [
"University of Maine",
"University of Southern Florida",
"University of Maryland"
];

/*Landing Page*/
$(document).on('ready page:load', function(){
    /*Animations to show statistics counter on page load on landing page*/
	$('.statistics-counter').each(function () {
		$(this).prop('Counter',0).animate({
			Counter: $(this).text()
		}, {
			duration: 1000,
        	easing: 'swing',
        	step: function (now) {
        		$(this).text(Math.ceil(now));
        	}
        });
        /*jQuery UI Autocomplete for University Search Form*/
        $(".university-field").autocomplete({
            source: availableTags
        });
    });
});



/*Applications*/
/*These notifies user of their current character count during application "essay" submission*/
function updateCounter(){
    var charCount = $("#essay-form").val().length;
    //The text in the p element with id char-limit is equivelent to num of chars
    $("#char-limit").html(charCount);
    if (charCount > 1000) {
        $("#char-limit").css("color", "red");
     } else if (charCount > 1 && charCount < 1000) {
        $("#char-limit").css("color", "black");
     } else {
     	$("#char-limit").empty().append();
     }
 };
