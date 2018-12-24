class KidsController < ApplicationController

  def index
    @kids = Kid.all
  end

  def new
    @kid = Kid.new
  end

  def edit
    @kid = Kid.find(params[:id])
    @courses = Course.all
  end

  def update
    @kid = Kid.find(params[:id])
    @kid.update(course_id: params[course_ids:[]])
    redirect_to parent_path(session[:id])
  end

end
