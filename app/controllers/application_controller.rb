class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= Parent.find_by(id: session[:parent_id])
  end

  def logged_in?
    current_user != nil
  end
end
