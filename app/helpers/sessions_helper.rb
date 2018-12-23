module SessionsHelper
  def log_in(parent)
    session[:user_id] = parent.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    if session[:parent_id]
      @current_user ||= Parent.find_by(id: session[:parent_id])
    end
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
end
