Rails.application.routes.draw do
  # get 'session/new'
  # get 'session/create'
  # get 'session/destroy'
  root to: 'application#welcome'
  get '/signup' ,to: 'users#new'
  post '/signup' ,to: 'users#create'
  get '/login' ,to: 'sessions#new'
  post '/login' ,to: 'sessions#create'
  get '/logout' ,to: 'sessions#destroy' # from url box
  post '/logout' ,to: 'sessions#destroy' # from button without method: :delete
  delete '/logout' ,to: 'sessions#destroy' # from button with method: :delete
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
