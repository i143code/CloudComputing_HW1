Rails.application.routes.draw do
  devise_for :users
 resources :tabels
  root 'tabels#new'
end
