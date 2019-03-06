

class SessionsController < ApplicationController


  def new
    #just renders the login form
  end

  #create a session by logging in, find the user (parent) then persist them
  def create
    if auth_hash = request.env["omniauth.auth"]
      #they logged in via oauth
      oauth_nickname = request.env["omniauth.auth"]["info"]["nickname"]

      if parent = Parent.find_by(name: oauth_nickname)
        log_in(parent)
        redirect_to parent_path(session[:id])
        #just log them in because I have seen then before, omniauth is checking they are who they say they are
      else
        #make a new user
        parent = Parent.new(name: oauth_nickname, password: request.env["omniauth.auth"]["credentials"]["token"])
        if parent.save
          log_in(parent)
          redirect_to parent_path(session[:id])
        else
          raise parent.errors.full_messages.inspect
        end
      end
    else
      parent = Parent.find_by(name: params[:session][:name])

      if parent && parent.authenticate(params[:session][:password])
        log_in(parent)
        redirect_to parent_path(session[:id])
      else
        flash[:notice] = "That didn't work"
        render :new
      end
    end
  end

  def destroy
      session.clear
  end

  private

end
