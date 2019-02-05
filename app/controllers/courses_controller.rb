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

end
