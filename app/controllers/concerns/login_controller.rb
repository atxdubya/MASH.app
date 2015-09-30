 class LoginController < ApplicationController
	def login_form

    end

    def check_login
        user = User.find_by(:email => params[:email])

        if user && user.authenticate(params[:password])
            # Valid login, set the session and redirect to protected destination
            session[:current_user_id] = user.id

            redirect_to '/'
        else 
            # Not a match, redirect to the login page 
            redirect_to '/login?err=1'
        end
    end
end
