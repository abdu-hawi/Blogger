class ControlsController < ApplicationController
  def login
  	if request.post?
  		user = User.find_by(:email=>params[:email],:password=>params[:password])
  		if !user.nil?
  			session[:user] = user.id
  			redirect_to root_url, notice:"You are Login"
  		else
        redirect_to controls_login_path , danger:"You have some error, please take sure for all input or click "
  		end
  	end
  end

  def logout
    session[:user] = nil
    redirect_to root_url, notice:"You are Login"
  end

end
