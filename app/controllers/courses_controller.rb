require 'pry'
class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @post}
    end
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create!(course_params)
    render json: @course, status: 201
  end

  private

  def course_params
    params.require(:course).permit(
      :title,
      :start_time,
      :age_group,
      :description,
      :teacher_id
      )
  end

end
