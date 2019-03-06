class TeachersController < ApplicationController
  #Just wanted the users to be able to see a list of teachers
  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
  end


end
