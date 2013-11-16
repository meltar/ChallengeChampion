class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  	def current_user
    	@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def current_user_google
		@current_user_google ||= User.find_by google_id: (session[:user_id_google]) if session[:user_id_google]
	end

	helper_method :current_user
	helper_method :current_user_google
end
