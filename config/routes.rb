Rails.application.routes.draw do
  # get 'teacher/index'
  # get 'teacher/new'
  # get 'teacher/create'
  # get 'kid/new'
  # get 'kid/create'
  # get 'parent/index'
  # get 'parent/new'
  # get 'parent/create'
  # get 'course/index'
  #
  resources :parents do
    resources :teachers, only: [:index, :show]
    resources :kids, only: [:show]
    resources :courses, only: [:index, :show]
  end

  resources :courses

  root 'course/welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
