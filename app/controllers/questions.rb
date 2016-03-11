get '/questions' do

end

get '/questions/new' do
  #display the form for a new question

end

post '/questions' do
  #create a new question
  #@question = Question.new()
    #needs a title, body, and user_id
end

get 'questions/:id/answers/new' do
  #display the form for a new answer for a specific question

end

post 'questions/:id/answers' do
  #create an answer for a specific question

end

get '/questions/:id/answers' do
  #display all the answers for a particular question

  @questions = Question.all.to_a
  erb :questions
end

post '/questions' do
  @new_question = Question.create(title: params[:title], body:params[:title], user_id: session[:user_id])
  erb :_new_question
end


get '/questions/:id' do
  @id = params[:id]
  @question = Question.find_by(id: @id)
  @answers = Answer.where(question_id: @id).to_a
  # @question.to_json
  erb:_show

end

