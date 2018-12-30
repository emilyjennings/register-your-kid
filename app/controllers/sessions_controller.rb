require 'pry'

class SessionsController < ApplicationController


  def new
    #just renders the login form
  end

  #create a session by logging in, find the user (parent) then persist them
  def create
    if auth_hash = request.env["omniauth.auth"]
      #they logged in via oauth
      oauth_email = request.env["omniauth.auth"]["email"]
      if parent = Parent.find_by(name: oauth_email)
        log_in(parent)
        redirect_to parent_path(session[:id])
        #just log them in because I have seen then before, omniauth is checking they are who they say they are
      else
        #make a new user
        parent = Parent.new(name: oauth_email)
        if parent.save
          log_in(parent)
          redirect_to parent_path(session[:id])
        else
          raise parent.errors.full_messages.inspect
        end
      end
    else
      parent = Parent.find_by(name: params[:session][:name])

      if parent && parent == Parent.find_by(password_digest: params[:session][:password_digest])
        log_in(parent)
        redirect_to parent_path(session[:id])
      else
        flash[:notice] = "that didn't work"
        render :new
      end
    end
  end

  def destroy
      session.clear
  end
end
