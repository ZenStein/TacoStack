get '/questions' do
  #display all the questions

end

get '/questions/new' do
  #display the form for a new question

end

post '/questions' do
  #create a new question

end

get 'questions/:id/answers/new' do
  #display the form for a new answer for a specific question

end

post 'questions/:id/answers' do
  #create an answer for a specific question

end

get '/questions/:id/answers' do
  #display all the answers for a particular question

end

