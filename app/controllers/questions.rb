get '/questions' do
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

