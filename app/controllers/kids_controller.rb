require 'pry'

class KidsController < ApplicationController

  def index
    @kids = Kid.all
  end

  def new
    @kid = Kid.new
  end

  def edit
    @parent = Parent.find_by(id: session[:id])
    @kid = Kid.find(kid_path.last)

    # @kids = @parent.kids
    @courses = Course.all
  end

  def update
    binding.pry
    @kid = Kid.find(params[:id])
    @kid.update(course_id: params[:id])
    redirect_to parent_path(session[:id])
  end

end
