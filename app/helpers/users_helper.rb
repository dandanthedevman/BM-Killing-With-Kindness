def acceptable_password?
  params[:user][:password].length >= 3
end

def same_user?(post)
	current_user == post 
end 