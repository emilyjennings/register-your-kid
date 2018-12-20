class SessionsController < ApplicationController
  # test "should get new" do
  #   get login_path
  #   assert_response :success
  # end

  def new
  end

  def create
    session[:name] = params[:name]
    redirect_to '/'
  end
end
