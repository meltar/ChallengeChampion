class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def show
		@user = User.friendly.find(params[:id])
		@challenges = @user.challenges.last(10).reverse
	end

	def create
		@user = User.new(user_profile_params)
		if @user.save
			redirect_to @user
		else
			render 'new'
		end
	end

	private

	def sign_in_user
		redirect_to signin_url, notice: "Please sign in." unless current_user
	end

  	def user_profile_params
    	params.require(:user).permit(:name)
  	end
end
