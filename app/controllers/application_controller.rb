class ApplicationController < ActionController::Base
  # helper_method :current_user, :logged_in?, :log_out
  include SessionsHelper
  
  def current_user
    session[:name] || nil
  end

  # def logged_in?
  #   current_user != nil
  # end


  # def log_out
  #   session.delete(:parent_name)
  #   current_user = nil
  # end


end
