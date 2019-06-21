class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password]) && @user.user_type == "Client"
      # byebug
      session[:user_id] = @user.id

      redirect_to client_path(@user.client)
    elsif @user && @user.authenticate(params[:password]) && @user.user_type == "Lawyer"

      session[:user_id] = @user.id

      redirect_to lawyer_path(@user.lawyer)
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
