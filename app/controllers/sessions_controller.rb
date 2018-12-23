require 'pry'

class SessionsController < ApplicationController


  def new
    #just renders the login form
  end

  #create a session by logging in, find the user (parent) then persist them
  def create
    parent = Parent.find_by(name: params[:session][:name])
    if parent #&& parent.authenticate(params[:session][:password_digest])
      log_in(parent)
      redirect_to parent_path(session[:id])
    else
      flash[:notice] = "that didn't work"
      render :new
    end

  end

  def destroy

      session.clear

  end
end
