
# get '/questions/new' do
#   #display the form for a new question

# end

# get 'questions/:id/answers/new' do
#   #display the form for a new answer for a specific question

# end

post '/questions' do
p  session[:user_id]
  @new_question = Question.create(title: params[:title], body: params[:body], user_id: session[:user_id])
  @answers = []
  erb :_new_question, layout: false
end


post '/questions/:id/answers' do

  #create an answer for a specific question
  #this has not been tested
  Answer.create(question_id: params[:question_id], body: params[:body], user_id: session[:user_id])
  @answers = Answer.where(question_id: params[:id]).to_a
  erb :_answer
end

get '/questions/:id/answers' do
  #display all the answers for a particular question
  @question = Question.find(params[:id])
  @answers = @question.answers
p '*' * 50
  p @answers
  p '*' * 50

  erb :_answers, layout: false
end



get '/questions/:id' do
  @id = params[:id]
  @question = Question.find_by(id: @id)
  @answers = Answer.where(question_id: @id).to_a
  # @question.to_json
  erb:_show

end

