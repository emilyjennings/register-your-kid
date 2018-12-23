require 'pry'

class ParentsController < ApplicationController
  # before_action :require_login, only: [:show]

  def welcome
    @parent = current_user
    render :welcome
  end

  def index
    @parents = Parent.all
    @parent = current_user
    render :index
  end

  def new
    #a new parent login form is shown
    @parent = Parent.new
    @parent.kids.build(kid_number: "1")
    @parent.kids.build(kid_number: "2")
    @parent.kids.build(kid_number: "3")
  end

  def create
    @parent = Parent.create(parent_params)
    #the parent gives a name and is signed up, otherwise directed back to the welcome page. If they successully sign up, they are directed to login
    if @parent.save
      redirect_to login_path
    else
      redirect_to root_path
      flash[:notice] = "Enter a value of some kind"
    end
  end

  def show
      @parent = Parent.find_by(id: session[:id])
      @kids = @parent.kids
  end

  private

  def parent_params
    params.require(:parent).permit(
      :name,
      :password_digest,
      kids_attributes: [
        :name,
        :age,
        :kid_number
        ]
      )
  end

  # def require_login
  #   redirect_to '/' if current_user.blank?
  # end
end
