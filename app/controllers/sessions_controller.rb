class SessionsController < ApplicationController
  # test "should get new" do
  #   get login_path
  #   assert_response :success
  # end

  def new
  end

  def create
    @parent = Parent.find_by(name: params[:name])
    if @parent.nil? || @parent.empty?
      redirect_to root_path
      flash[:notice] = "enter a value"
    elsif @parent
      session[:name] = @parent.name
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    current_user = nil
  end
end
