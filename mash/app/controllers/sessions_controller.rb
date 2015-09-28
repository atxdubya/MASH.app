class SessionsController < ApplicationController

	def new

	end

	def create
		if login(params[:email], paramas[:password])
			redirect_back_or_to '/'
		else
			render :new + '/login?err=1'
		end
	end

	def destroy
		logout
		redirect_to '/users'
	end

end