class UserController < ApplicationController
  def signup
	@title = "Signup"
	if request.post? and params[:user]
		@user = User.new(params[:user])
		if @user.save
			session[:user] = @user
			flash[:notice] = "User #{@user.login} has been registered"
			redirect_to :action => "home"
			else
				flash[:error] = "There was a problem with registration"
				@user.clear_password!
		end	
	end	
end

def home
	@title = "Bookshelf - User Home"
end


end

	