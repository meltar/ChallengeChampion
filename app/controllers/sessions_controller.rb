class SessionsController < ApplicationController

	def new
	end

	def create
		if session[:user_id].nil?

	    	user = User.find_by_name auth["info"]["nickname"]

			if user
				user.update(uid: auth["uid"])
			else
				builder = UserBuilder.new
				user = builder.build auth
			end

			session[:user_id] = user.id
			flash[:success] = "Welcome to Challenge Champion!"
		end
		
		redirect_to users_path
	end

	def destroy
		session[:user_id] = nil
		flash.keep[:success] = "Signed out!"
		redirect_to signin_path
	end

	def failed_authentication
		flash.keep[:error] = "Something went wrong!"
		redirect_to signin_path
	end

	protected

	def auth
		env['omniauth.auth']
	end

end
