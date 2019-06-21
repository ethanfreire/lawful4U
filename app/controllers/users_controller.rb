class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
      @user = User.new(user_params)
      if @user.valid?
        @user.save
        session[:user_id] = @user.id
        if @user.admin?
            redirect_to new_lawyer_path
        else
            redirect_to clients_path
        end
      else
        render :new
      end
  end

  private

  def user_params
      params.require(:user).permit(:username, :password, :email, :admin)
  end
end