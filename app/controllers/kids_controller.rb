require 'pry'

class KidsController < ApplicationController

  def index
    @kids = Kid.all
  end

  def sorted_names
  end

  def show
    @kid = Kid.find(params[:id])
  end

  def new
    @kid = Kid.new
  end

  def create
    @kid = Kid.create(kid_params)
    @parent = current_user
    @parent.kids << @kid
    redirect_to parent_path(@parent)
  end

  # def edit
  #   @parent = Parent.find_by(id: session[:id])
  #   @kid = Kid.find(params[:id])
  #   @courses = Course.all
  # end

  def update
    @kid = Kid.find(params[:id])
    @kid.update(course_id: params[:kid][:course_id])
    redirect_to parent_path(session[:id])
  end

  def kid_params
    params.require(:kid).permit(
      :name,
      :age,
      )
  end

end
