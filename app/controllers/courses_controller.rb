
class CoursesController < ApplicationController

  #for the nav bar to work, I needed to load the current user in some places
  def index
    @courses = Course.all
    @parent = current_user
  end

  def show
    @parent = current_user
    @course = Course.find(params[:id])
    respond_to do |format|
      format.html { render :show } #if it is rendered as html, take to show page
      format.json { render json: @course.to_json } #if rendered as json, take to page where the data is a hash
    end
  end

  def new
    @course = Course.new
    @parent = current_user
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
