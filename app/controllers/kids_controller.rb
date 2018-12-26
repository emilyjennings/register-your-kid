require 'pry'

class KidsController < ApplicationController

  def index
    @kids = Kid.all
  end

  def show
    @kid = Kid.find(params[:id])
  end

  def new
    @kid = Kid.new
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

end
