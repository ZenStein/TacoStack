$(document).ready(function () {
  $('#questionForm').on('submit', postQuestion);
  // $('#answerForm').on('submit', postAnswer);
  // $('#commentForm').on('submit', postComment);
  $('.expandQuestion').on('click', showFormAndAnswers);
  // $('#expandAnswer').on('click', showFormAndComments);

});

var postQuestion = function(event){
  event.preventDefault()
  var route = $('#questionForm').attr('action');
  var value = $(this).serialize();
  $.post(route, value, printQuestion);
}

var printQuestion = function(response){
  $('#all_questions').before(response)
}

var showFormAndAnswers = function(event){
  console.log("hello")
  event.preventDefault()
  var route = $(this).attr('href')
  $.get(route, expandQuestion)
}

var expandQuestion = function(response){

    $('#all_questions').after(response)
}


var postAnswer = function(){
  // here's something
  //do post to database
  //get response
  //put post onto homepage
}


var postComment = function(){
  //do post to database
  //get response
  //put post onto homepage
}
