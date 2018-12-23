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
  # get '/login' => 'sessions#new'
  # post '/sessions' => 'sessions#create'
  #not sure i need this
  resources :parents
  resources :courses, only: [:index, :show]
  resources :teachers, only: [:index, :show]
  resources :parents do
    resources :kids, only: [:show, :new]
    resources :courses, only: [:index, :show]
  end
  #the parent logs in, creates their kids, and then adds courses they want
  #but any person can view courses and teachers without logging in too


  get   '/signup', to: 'parents#new'
  get   '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # can instead be post '/logout',  to: 'sessions#destroy'


  root 'parents#welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
