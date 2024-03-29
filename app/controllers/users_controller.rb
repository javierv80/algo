class UsersController < ApplicationController

	def index
		@users = User.order("users.username ASC")
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			login @user
			flash[:success] = 'Gracias por registrarte'
			redirect_to root_url
		else
			render 'new'
		end
	
	end
end
