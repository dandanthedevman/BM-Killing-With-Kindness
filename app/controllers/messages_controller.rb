
post '/messages' do 

	send_simple_message
	
	if logged_in?
		@message = Message.new(content: params[:content], user_id: current_user.id)
		if @message.save 
			redirect '/messages/new'
		else 
			@errors = @message.errors.full_messages
			erb :"/message/new"
		end 
	else 
		@message = Message.new(content: params[:content])
		if @message.save 
			redirect '/messages/new'
		else 
			@errors = @message.errors.full_messages
			erb :"/message/new"
		end 
	end 
end 


get '/messages/new' do 

	erb :'messages/new'

end 

