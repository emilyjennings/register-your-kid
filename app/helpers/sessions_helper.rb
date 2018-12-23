module SessionsHelper
  def log_in(parent)
    session[:id] = parent.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    current_user ||= Parent.find_by(id: session[:id])

  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
end
