require 'pry'

class SessionsController < ApplicationController


  def new
  end

  def create
    @parent = Parent.find_by(name: params[:name])
    # binding.pry
    session[:id] = @parent.id
    # if @parent.nil? || @parent.empty?
    #   redirect_to root_path
    #   flash[:notice] = "enter a value"
    # elsif @parent

      # redirect_to login_path
    # end
  end

  def destroy
    log_out
    redirect_to root_path
    flash[:notice] = "Logged Out"
  end
end
