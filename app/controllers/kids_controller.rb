

class KidsController < ApplicationController
  #I needed to put in the current user in some places for the nav to work
  def index
    @parent = Parent.find(params[:parent_id])
    @kids = @parent.kids
  end

  def show
    @parent = Parent.find(params[:parent_id])
    @kid = @parent.kids.find(params[:id])
    # respond_to do |format|
    #   format.html { render :show }
    #   format.json { render  json: @kid }
    # end
  end

  def new
    @kid = Kid.new
    @parent = Parent.find(params[:parent_id])
  end

  #creates a new kid from the form and associates them with their parent
  def create
    @kid = Kid.create(kid_params)
    @parent = Parent.find(params[:parent_id])
    @parent.kids << @kid
    redirect_to parent_kids_path
    # render json: @kid, status: 201
  end

  def edit
    @parent = current_user
    @kid = Kid.find(params[:id])
    @course = Course.find(params[:course_id])
  end

  def update
    @kid = Kid.find(params[:id])
    @kid.update(course_id: params[:kid][:course_id])
    redirect_to parent_kids_path(current_user)
  end

  private

  def kid_params
    params.require(:kid).permit(
      :name,
      :age,
      )
  end

end
