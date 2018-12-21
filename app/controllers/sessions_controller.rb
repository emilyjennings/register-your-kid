class SessionsController < ApplicationController
  # test "should get new" do
  #   get login_path
  #   assert_response :success
  # end

  def new
  end

  def create
    if params.nil? || params.empty?
      redirect_to login_path
      flash[:notice] = "not allowed"
    else
      parent = Parent.find_by(name: params[:name])
      session[:name] = parent
      redirect_to '/'
    end
  end

  def delete
    session.clear
    @current_user = nil
  end
end
