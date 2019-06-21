class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create

      @user = User.create(user_params)

      if @user.user_type == "Lawyer"
        session[:user_id] = @user.id

        redirect_to new_lawyer_path
      elsif @user.valid? && @user.user_type == "Client"
        @user.save
        session[:user_id] = @user.id
        redirect_to new_client_path
      end
  end

  private

  def user_params
      params.require(:user).permit(:email, :password, :user_type)
  end
end
