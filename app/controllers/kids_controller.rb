class KidsController < ApplicationController

  def index
    @kids = Kid.all
  end

  def new
    @kid = Kid.new
  end

  def edit
    @parent = Parent.find_by(id: session[:id])
    @kids = @parent.kids
    @courses = Course.all
  end

  def update
    @kid = Kid.find(params[:id])
    @kid.update(course_id: params[:id])
    redirect_to parent_path(session[:id])
  end

end
