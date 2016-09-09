Rails.application.routes.draw do
  devise_for :users
 resources :tabels do
  get 'insert', to: "tabels#new"
 end
  root 'tabels#new'
end
