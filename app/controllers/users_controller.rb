class UsersController < ApplicationController
	respond_to :html, :json

	def index
		@users = User.paginate(page: params[:page])
		respond_with(@users)
	end

	def new
		@user = User.new
		respond_with(@user)
	end

	def show
		@user = User.friendly.find(params[:id])
		@challenges = @user.challenges.paginate(page: params[:page])
		respond_with([@user, @challenges])
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
