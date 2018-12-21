require 'pry'

class ParentsController < ApplicationController
  def index
    render :welcome
    @parents = Parent.all

  end

  def new
    @parent = Parent.new(name: params[:name])

  end

  def create
    @parent = Parent.new(parent_params)
    if @parent.save
      redirect_to parents_path
    else
      render 'parents/new'
      flash[:notice] = "Try Again"
    end
  end

  private

  def parent_params
    params.require(:parent).permit(:name, :password)
  end
end
