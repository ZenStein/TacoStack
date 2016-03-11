get '/questions' do

end

get '/questions/new' do
  #display the form for a new question

end

get 'questions/:id/answers/new' do
  #display the form for a new answer for a specific question

end

# create_table :answers do |t|
#       t.integer :question_id
#       t.string :body, null: false
#       t.integer :user_id
#       t.timestamps(null: false)

post 'questions/:id/answers' do
  #create an answer for a specific question
  #this has not been tested
  Answer.create(question_id: params[:question_id], body: params[:body], user_id: session[:id])
  @answers = Answer.where(question_id: params[:id]).to_a
  erb :_answers
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

