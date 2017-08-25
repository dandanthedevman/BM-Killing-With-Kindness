get '/messages' do 
	@messages = Message.all 
	erb :'/messages/show'
end 

post '/messages' do 
	@messages = Message.all


	if request.xhr?
		if logged_in?
			@message = Message.new(content: params[:content], user_id: current_user.id)
			if @message.save 
				status 202
				send_email(@message.content)
				erb :'/messages/show', layout: false, locals: {messages: @messages}
			else 
				status 400 
				@errors = @message.errors.full_messages
				content_type :json
    		erb :"_errors", { layout: false, locals: { :errors => @errors }}
			end 
		else 
			@message = Message.new(content: params[:content])
			if @message.save 
				status 202
				send_email(@message.content)
				erb :'/messages/show', layout: false, locals: {messages: @messages}
			else 
				status 400 
				@errors = @message.errors.full_messages
				erb :"_errors", { layout: false, locals: { :errors => @errors }}
			end 
		end 
	else 
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
end 


get '/messages/new' do 

	erb :'messages/new'
	
end 

