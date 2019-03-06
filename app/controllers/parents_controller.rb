

class ParentsController < ApplicationController
  # before_action :require_login, only: [:show]

  def welcome
    @parent = current_user
    render :welcome
  end

  #users can see a list of parents in the school
  def index
    @parents = Parent.all
    @parent = current_user
    render :index
  end

  def new
    #a new parent login form is shown, and they have the option to add up to three kids but they can add more later after login
    @parent = Parent.new
    @parent.kids.build(name: "name of first kid")
    @parent.kids.build(name: "name of second kid")
    @parent.kids.build(name: "name of third kid")
  end

  def create
    @parent = Parent.create(parent_params)
    #the parent gives a name and is signed up, otherwise directed back to the welcome page. If they successully sign up, they are directed to login
    if !@parent.kids[0].name.empty? && @parent.save
      redirect_to login_path
      flash[:notice] = "You Signed Up. Now Log In!"
    elsif !@parent.name.empty? && @parent.kids[0].name.empty?
      redirect_to signup_path
      flash[:notice] = "Please try again, make sure you entered your name and one kid"
    else
      !@parent.save
      redirect_to signup_path
      flash[:notice] = @parent.errors.full_messages.to_sentence
    end
  end

#The parent show page is the dashboard where the user can see their kids and schedule
  def show
    @parent = Parent.find(params[:id])
    @courses = Course.all
    @kids = @parent.kids
  end


  private

  def parent_params
    params.require(:parent).permit(
      :name,
      :password,
      kids_attributes: [
        :name,
        :age,
        ]
      )
  end

end
