require 'pry'

class KidsController < ApplicationController

  def index
    @kids = Kid.all
  end

  def new
    @kid = Kid.new
  end

  def edit
    #I need to figure out who the parent is and the child is (in a hash?)
    @parent = Parent.find_by(id: session[:id])
    @kid = Kid.find(kid_path.last)

    # @kids = @parent.kids
    @courses = Course.all
  end

  def update
    @kid = Kid.find(params[:id])
    #need to make sue the course id is the right params
    @kid.update(course_id: params[:kids][:course_id])
    redirect_to parent_path(session[:id])
  end

end
