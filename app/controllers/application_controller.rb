class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :user_signed_in

  private

    def current_user
      User.find(session[:user_id]) if session[:user_id]
    end

    def user_signed_in?
      current_user.present?
    end

    def require_authentication
      if current_user.nil?
        redirect_to signin_url(return_to: request.url), notice: "Please sign in"
      end
    end
end
