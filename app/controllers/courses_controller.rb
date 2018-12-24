require 'pry'
class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find_by(id: params[:id])
  end

  def new
    @course = Course.find_by(id: params[:id])
  end

  def create
    @course = Course.update(kids_ids: [])
  end

end
