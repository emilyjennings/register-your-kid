Rails.application.routes.draw do
  #the parent logs in while also making their kids.
  #they can see a list of ourses without logging in yet
  #after log in, they can sign up for courses

  resources :parents
  #need a list of courses and show pages for the casual viewer
  resources :courses, only: [:index, :show]
  #list of teachers and their profiles for casual viewer
  resources :teachers, only: [:index, :show]
  resources :parents do
    #when the parent logs in, they can go to their show page which lists their kids and then a further page that shows their courses they signed up for
    resources :courses, only: [:index, :show, :new, :create]
    #a logged in parent can see all kids in the school by name
    resources :kids
  end


  get   '/signup', to: 'parents#new'
  get   '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # can instead be post '/logout',  to: 'sessions#destroy'


  root 'parents#welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
