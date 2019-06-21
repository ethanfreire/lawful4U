class ApplicationController < ActionController::Base

  helper_method :get_current_user, :logged_in?, :is_lawyer?, :is_client?

  def get_current_user
    if @current_user
      return @current_user
    else
      @current_user = User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    !!get_current_user
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

  def is_lawyer?

    if get_current_user.user_type == "Lawyer"
      return true
    else
      return false
    end

  end

  def is_client?

    if get_current_user.user_type == "Client"
      return true
    else
      return false
    end

  end
end
