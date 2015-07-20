class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		user = User.new(user_params)
		if user.save
			redirect_to "/user/#{user.id}"
		else
			redirect_to "/user/new"
		end
	end

	def show
		@user = User.find(params[:id])
		if user_id == @user.id
			@editable = true
		end
	end

	private
		def user_params
			params.require(:user).permit(:location, :name, :email, :password)
		end

end
