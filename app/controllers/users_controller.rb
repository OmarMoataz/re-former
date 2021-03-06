class UsersController < ApplicationController
	def create
		@user = User.new(user_params)

		if @user.save
			redirect_to new_user_path
		else
			render :new
		end
	end

	def update
	 	@user = User.find(params[:id])
		@user.update(user_params)
		flash.notice = @user.errors.full_messages
	end

	def new
		@user = User.new
	end

	def edit
		@user = User.find(params[:id])
	end

	private 

	def user_params
		params.require(:user).permit(:username, :email, :password)
	end
end
