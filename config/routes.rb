Rails.application.routes.draw do
  get 'users/show'
  get 'myietcsbe/show'
  get 'myfriends/show'
  get 'myswitzerland/show'
  root 'pages#home'
  #get 'pages/home'
  #get 'helloworldtest', to: 'helloworldtest#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
