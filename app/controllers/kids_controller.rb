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
    @kid = Kid.find(params[:id])
    @courses = Course.all
  end

  def update
    #how to i put which kid this is for in the params?
    #binding.pry
    @kid = Kid.find(params[:id])
    @kid.update(course_id: params[:kids][:course_id])
    redirect_to parent_path(session[:id])
  end

end
