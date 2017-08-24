get '/messages' do 
	@messages = Message.all 
	erb :'/messages/show'
end 

post '/messages' do 

	if logged_in?
		@message = Message.new(content: params[:content], user_id: current_user.id)
		
		if @message.save 
			send_email(@message.content)
			redirect '/messages'
		else 
			@errors = @message.errors.full_messages
			erb :"/messages/new"
		end 
	else 
		@message = Message.new(content: params[:content])
		if @message.save 
			send_email(@message.content)
			redirect '/messages'
		else 
			@errors = @message.errors.full_messages
			erb :"/messages/new"
		end 
	end 
end 


get '/messages/new' do 

	erb :'messages/new'
	
end 

