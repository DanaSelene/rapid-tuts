Rails.application.routes.draw do
<<<<<<< HEAD
=======
  get 'sessions/new'
>>>>>>> tut-6-end
  get 'users/new'
  # get 'static_pages/home'
  # get 'static_pages/help'
  # get 'static_pages/about'
  # get 'static_pages/contact'
  # root 'static_pages#home'

  #changed in Listing 5.27:
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
<<<<<<< HEAD
=======
  get '/signup', to: 'users#new'
  # post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
>>>>>>> tut-6-end
end
