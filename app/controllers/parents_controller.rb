require 'pry'

class ParentsController < ApplicationController
  before_action :require_login

  def index
    render :welcome
    @parents = Parent.all

  end

  def new
    @parent = Parent.new(name: params[:name])

  end

  def create
    @parent = Parent.new(parent_params)
    if @parent.save
      log_in(@parent)
      @parent = current_user
      redirect_to login_path
    else
      render 'parents/new'
      flash[:notice] = "Try Again"
    end
  end

  def show
    if current_user
      
      @parent = Parent.find_by(parent_params)
      render 'show'
    else
      redirect_to '/'
    end
  end

  private

  def parent_params
    params.require(:parent).permit(:name, :password)
  end

  def require_login
    redirect_to '/' if current_user.blank?
  end
end
