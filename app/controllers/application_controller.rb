class ApplicationController < ActionController::Base

    helper_method :get_current_user, :current_username, :logged_in?, :authorized

    def get_current_user
        # memoization
        if @current_user
            return @current_user
        else
            @current_user = User.find_by(id: session[:user_id])
        end
    end

    def current_username
        user = get_current_user
        if user
            return user.username
        else
            return "Anonymous"
        end
    end

    def logged_in?
        !!get_current_user
    end

    def authorized
        redirect_to login_path unless logged_in?
    end
end
