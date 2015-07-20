class SessionsController < ApplicationController

	def new
	end


	def create 

		user = User.find_by({email: params[:user][:email]})

		if user && user.authenticate(params[:password])
			session[:id] = user.id
			redirect_to "/users/#{user.id}"
		else
			redirect_to '/'
		end
	end

  def destroy
    session[:id] = nil
    redirect_to '/'
  end


end