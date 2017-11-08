Rails.application.routes.draw do
  resources :project_choices
  resources :methodology_evaluations
  resources :project_planifications
  resources :project_implementations
  resources :project_connections
  resources :methodology_reviews
  resources :methodologies
  resources :project_reviews
  resources :projects
  root 'static_pages#home'
  get 'static_pages/home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :only => [:show]
end
