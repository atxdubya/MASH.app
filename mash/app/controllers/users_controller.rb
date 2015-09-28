class UsersController < ApplicationController

		has_many :messages

	def index
		@user = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			redirict_to @user
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def udpate
		@user = User.find(params[:id])

		if @user.update(user_params)
			redirect_to @user
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy

		redirect_to '/users'
	end

	private
		def message_params
			params.require(:user).permit(:first_name, :last_name, :nickname)
	end

end
