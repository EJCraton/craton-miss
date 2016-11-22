Rails.application.routes.draw do
  resources :archives

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'

  get '/signup-user' => 'users#new'
  post '/users' => 'users#create'
  get '/user/edit' => 'users#edit'
  put '/user/update' => 'users#update'

  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'

  get '/pages/upload' => 'pages#upload'

  resources :pictures
  resources :shapes
  resources :arcgis
end
