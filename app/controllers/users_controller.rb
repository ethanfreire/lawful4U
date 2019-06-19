class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create

      @user = User.new(user_params)

      if @user.valid? && @user.user_type == "Lawyer"
        @user.save
        session[:user_id] = @user.id
        redirect_to new_lawyer_path
      elsif @user.valid? && @user.user_type == "Client"
        @user.save
        session[:user_id] = @user.id
        redirect_to new_client_path
    else
        render :new
      end
  end

  private

  def user_params
      params.require(:user).permit(:email, :password, :user_type)
  end
end
