class SessionsController < ApplicationController
  def new
  end

  def create
      @user = User.find_by(email: params[:email])

      if @user && @user.authenticate(params[:password]) && @user.user_type == "Client"
        session[:user_id] = @user.id

        redirect_to clients_path
      elsif @user && @user.authenticate(params[:password]) && @user.user_type == "Lawyer"
        session[:user_id] = @user.id

        redirect_to lawyers_path
      else
        flash["notice"] = "No username/password combination found."
        render :new
      end
  end

  def destroy
      session.clear
      redirect_to login_path
  end
end
