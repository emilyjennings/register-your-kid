
class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @course.to_json }
    end
  end

  def new
    @course = Course.new
  end

  #I wanted users to be able to submit a course themselves - maybe later the admin can do that
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
