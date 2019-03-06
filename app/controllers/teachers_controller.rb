class TeachersController < ApplicationController
  #Just wanted the users to be able to see a list of teachers
  #for the nav bar to work I had to load the current user
  def index
    @teachers = Teacher.all
    @parent = current_user
  end

  def show
    @teacher = Teacher.find(params[:id])
    @parent = current_user
  end


end
