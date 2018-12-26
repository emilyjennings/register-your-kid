require 'pry'
class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end
  #
  # def add_kid
  #   @course = Course.find(params[:id])
  #
  # end

  # def update
  #   @course = Course.find(params[:id])
  #   @course.update()
  # end

  # private
  #
  # def course_params
  #    params.require(:course).permit(kids_ids:[])
  # end
end
