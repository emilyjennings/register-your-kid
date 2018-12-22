class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :log_in

  def current_user
    current_user ||= Parent.find_by(name: session[:name])
  end

  # def logged_in?
  #   current_user != nil
  # end
  #
  # def log_in(parent)
  #   session[:name] = parent.name
  # end
end
