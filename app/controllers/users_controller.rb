
get '/users/new' do
  erb :'users/new'
end

post '/users' do
  
  @user = User.new(params[:user])
  if @user.valid? 
  	if acceptable_password?
    	@user.save 
    	session[:id] = @user.id
    	redirect '/'
    else 
    	@errors = ["Password must be contain atleast three (3) characters."]
    	erb :'/users/new'
    end 
  else
    @errors = @user.errors.full_messages
    @errors << "Password must be contain atleast three (3) characters." unless acceptable_password?
    erb :'/users/new'
  end
end

