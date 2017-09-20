class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :logged_in?, :current_user

  private

  def login(user)
    @current_user = user
    session[:session_token] = user.reset_token!
  end

  def logged_in?
    !!current_user
  end

  def logout
    @current_user.try(:reset_token!)
    session[:session_token] = nil
  end

  def current_user
    return nil unless session[:session_token]
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def redirect_unless_logged_in
    render json: ["Invalid credentials"], status: 401 unless logged_in?
  end
end
