class KidsController < ApplicationController
  def new
    @kid = Kid.new
  end

  def create
    @kid = Kid.new(name: params[:kid][:name], age: params[:kid][:age])
    @kid.save
    @kid.parent_id = session[:id]
    redirect_to parent_path(session[:id])
  end
end
