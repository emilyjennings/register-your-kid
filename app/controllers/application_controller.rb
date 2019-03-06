class ApplicationController < ActionController::Base
  helper_method :registered?, :exists?, :capitalize
  include SessionsHelper


  # def current_user
  #   session[:name] || nil
  # end

  #helps see if the name exists in the database or the rendered items will look weird
  def exists?(k)
    k.name.present?
  end

  #helps see in the database if they signed up for a course already
  def registered?(kid)
    kid.course.present?
  end

  #capitalizes lower case names for a nicer look
  def capitalize(person)
    person.name.capitalize
  end


end
