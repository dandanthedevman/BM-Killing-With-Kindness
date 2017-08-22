get "/" do 

	redirect '/users/new' 

end 

# example routes 
# route handlers dealing with the collection
# get '/entries' do
#   @entries = Entry.most_recent
#   erb :'entries/index'
# end

# post '/entries' do
#   @entry = Entry.new(params[:entry])

#   if @entry.save
#     redirect "/entries/#{@entry.id}"
#   else
#     @errors = @entry.errors.full_messages
#     erb :'entries/new'
#   end
# end

# get '/entries/new' do
#   if logged_in?
#     erb :'entries/new'
#   else 
#     erb :'404'
#   end
# end

# get '/entries/:id' do
#   @entry = find_and_ensure_entry(params[:id])
#   erb :'entries/show'
# end

# put '/entries/:id' do
#   @entry = find_and_ensure_entry(params[:id])
#   @user = User.find(@entry.user.id)

#   if logged_in? && (current_user == @user)
#     @entry.assign_attributes(params[:entry])

#     if @entry.save
#       redirect "entries/#{@entry.id}"
#     else
#       @errors = @entry.errors.full_messages
#       erb :'entries/edit'
#     end
#   else 
#     erb :'404'
#   end
# end

# delete '/entries/:id' do
#   @entry = find_and_ensure_entry(params[:id])
#   @user = User.find(@entry.user.id)

#   if logged_in? && (current_user == @user)
#     @entry.destroy
#     redirect '/entries'
#   else 
#     erb :'404'
#   end

# end

# get '/entries/:id/edit' do
#   @entry = find_and_ensure_entry(params[:id])
#   @user = User.find(@entry.user.id)

#   if logged_in? && (current_user == @user)
#     erb :'entries/edit'
#   else 
#     erb :'404'
#   end
# end