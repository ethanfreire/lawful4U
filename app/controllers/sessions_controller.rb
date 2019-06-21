class SessionsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            if @user.admin?
                redirect_to lawyers_path
            else
                redirect_to clients_path
            end
        else
            flash["notice"] = "The username or password you’ve entered doesn’t match any account. Sign up for an account."
            render :new
        end 
    end

    def destroy
        session.clear
        redirect_to login_path
    end
end
