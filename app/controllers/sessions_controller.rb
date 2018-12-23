require 'pry'

class SessionsController < ApplicationController


  def new
    #just renders the login form
  end

  #create a session by logging in, find the user (parent) then persist them
  def create
    parent = Parent.find_by(name: params[:session][:name])
    if parent && parent.authenticate(params[:session][:password_digest])
      log_in parent
      redirect_to root_path
    else
      flash[:notice] = "that didn't work"
      render :new
    end



    # if @parent.nil? || @parent.empty?
    #   redirect_to root_path
    #   flash[:notice] = "enter a value"
    # elsif @parent

      # redirect_to login_path
    # end
  end

  def destroy
    if !current_user.blank?
      session[:name] = nil
      redirect_to root_path
    else
    # session.clear
      redirect_to root_path
      flash[:notice] = "Logged Out"
    end
  end
end
