class ParentsController < ApplicationController
  def index
    render :welcome
    @parents = Parent.all
  end

  def new
    @parent = Parent.new(name: params[:name])
    render :new
  end

  def create
    @parent = Parent.new(parent_params)
    if @parent.save
      redirect to parent_path
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
