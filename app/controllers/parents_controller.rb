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
      log_in(@parent)
      @parent = current_user
      redirect_to parent_path(@parent)
    else
      render 'parents/new'
      flash[:notice] = "Try Again"
    end
  end

  def show
    
  end

  private

  def parent_params
    params.require(:parent).permit(:name, :password)
  end
end
