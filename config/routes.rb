Rails.application.routes.draw do
  resources :projects
  root 'static_pages#home'
  get 'static_pages/home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :only => [:show]
end
