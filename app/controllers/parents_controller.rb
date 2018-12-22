require 'pry'

class ParentsController < ApplicationController
  # before_action :require_login, except => [:new, :create, :destroy]

  def index
    @parents = Parent.all
    render :index

  end

  def new

  end

  def create
    #the parent gives a name and is signed up, otherwise directed back to the welcome page. If they successully sign up, they are directed to login
    if parent_params.nil? || parent_params.empty?
      redirect_to root_path
      flash[:notice] = "enter a value of some kind"
    else
      @parent = Parent.new(parent_params)
      redirect_to login_path
    end


    # @parent = Parent.new(parent_params)
    # if @parent.save
    #   log_in(@parent)
    #   current_user = @parent
    #
    #   redirect_to login_path
    # else
    #   render 'parents/new'
    #   flash[:notice] = "Try Again"
    # end
  end

  def show
    # if current_user
    #   @parent = Parent.find_by(name: params[:name])
    #   current_user.name = @parent.name
    #   render 'show'
    # else
    #   redirect_to '/'
    # end

    #the parent should be the current user so the page can be customized to them
    @parent = Parent.find_by(name: current_user)
  end

  private

  def parent_params
    params.require(:parent).permit(name: :name, password: :password)
  end
  #
  # def require_login
  #   redirect_to '/' if current_user.blank?
  # end
end
