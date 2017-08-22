
get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
   @user = User.find_by(user_name: params[:user_name])

  if @user && @user.authenticate?(params[:password])
    session[:id] = @user.id
    redirect "/"
  else
    @errors = ["user name and password don't match"]
    erb :'sessions/new'
  end

end

get '/sessions/:id' do 
  @user = User.find(params[:id])
  erb :'/sessions/show'
end 

delete '/sessions/:id' do 
  session[:id] = nil 
  redirect '/'
end
