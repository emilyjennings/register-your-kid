class ApplicationController < ActionController::Base
  helper_method :registered?, :exists?, :capitalize
  include SessionsHelper


  # def current_user
  #   session[:name] || nil
  # end

  def exists?(k)
    k.name.present?
  end

  def registered?(kid)
    kid.course.present?
  end

  def capitalize(person)
    person.name.capitalize
  end


end
