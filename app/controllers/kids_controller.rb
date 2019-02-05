require 'pry'

class KidsController < ApplicationController

  def index
    @parent = Parent.find(params[:parent_id])
    @kids = @parent.kids
  end

  def show
    @parent = Parent.find(params[:parent_id])
    @kid = @parent.kids.find(params[:id])
  end

  def new
    @kid = Kid.new
    @parent = Parent.find(params[:parent_id])
  end

  def create
    @kid = Kid.create(kid_params)
    @parent = Parent.find(params[:parent_id])
    @parent.kids << @kid
    render json: @kid, status: 201
  end

  def edit
    @kid = Kid.find(params[:id])
    @course = Course.find(params[:course_id])
  end

  def update
    @kid = Kid.find(params[:id])
    @kid.update(course_id: params[:kid][:course_id])
    redirect_to parent_kids_path(current_user)
  end

  def kid_params
    params.require(:kid).permit(
      :name,
      :age,
      )
  end

end
