$(document).ready(function () {

/*
*  question id = question_ID where 'ID' references its own id
*  question_id = question_ID where 'ID' references its own id
*
*
* */

  $('#questionForm').on('submit', postQuestion);
  $('#answerForm').on('submit', postAnswer);
  $('#commentForm').on('submit', postComment);
  $('#expandQuestion').on('click', showFormAndAnswers);
  $('#expandAnswer').on('click', showFormAndComments);


});

var postQuestion = function(){
  //do post to database
  //get response
  //put post onto homepage
}


var postAnswer = function(){
  //do post to database
  //get response
  //put post onto homepage
}


var postComment = function(){
  //do post to database
  //get response
  //put post onto homepage
}
