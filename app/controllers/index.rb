get '/' do
  if session[:user_id]
    @user = User.find(session[:user_id])
    @questions = Question.all
    erb :logged_in_index
  else
    erb :landing_page #(not logged in)
  end
end

get '/secret' do
  redirect '/sessions/new' unless session[:user_id]
  "Secret area!"
end
