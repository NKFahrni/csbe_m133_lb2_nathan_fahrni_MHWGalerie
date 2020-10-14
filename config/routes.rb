Rails.application.routes.draw do
  get 'session/new'
  root 'homepage#home'
  get 'register/index' => 'user/new'
  get 'homepage/home' => 'homepage#home'
  get 'login/index' => 'login/index'
  get 'profil/index' => 'profil/index'
  get 'galerie/index' => 'galerie/index'
  post   '/login'   => 'session#create'
  delete 'logout'  => 'session#destroy'
  post '/create' => 'user#create'
  post '/logout' =>  'session#destroy'
  post '/update' => 'user#update'
  post '/delete' => 'user#destroy'
  resources :user

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
