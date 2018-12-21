class CoursesController < ApplicationController
  def index
    #if you're not logged in, you can't see this
  end
  # 
  # def new
  #   @course = Course.create(course_params)
  # end
  #
  # private
  #
  # def course_params
  #   params.require(:parent).permit(:name, :password)
  # end
end
