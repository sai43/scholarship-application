/*Landing Page*/

/*Counter: On page load*/
var statesArray = [];
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
 }

 /*jqueryUi only works from a pure array, so the data for our search forms, which are
provided in the form of an array of objects must all be converted to an array of strings
for autocomplete. Refer to "usstates.js" and "worlduniversities.js" file for the data. /*/
var statesArray = [];
$(document).on('ready page:load', function(){
    for (var i = 0; i <allStates.length; i++) {
        statesArray.push(allStates[i].name);
    }
})

 /*This shows an autocomplete of all US states.*/
function updateStateSearch() {
    $("#state-field").autocomplete({
            source: statesArray
        });
}

var uniArray = [];
$(document).on('ready page:load', function() {
    for (var i = 0; i <worldUniversities.length; i++) {
        if (worldUniversities[i].country === "Canada" || worldUniversities[i].country === "USA") {
            uniArray.push(worldUniversities[i].name);
        }
    }
})

 /*This shows an autocomplete of American or Canadian universities.*/
function updateUniSearch() {
    $("#uni-field").autocomplete({
            source: uniArray
        });
}


