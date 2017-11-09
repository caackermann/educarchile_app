Rails.application.routes.draw do

  resources :methodologies


  resources :projects do

    resources :project_connections do
      resources :methodology_evaluations
    end

    resources :project_planifications do
      resources :project_resources
      resources :project_difusions
      resources :project_conditions
    end

    resources :project_choices
    resources :project_communications
    resources :project_evaluations
    resources :project_implementations
    resources :project_reviews
    resources :methodologies
  end

  root 'static_pages#home'
  get 'static_pages/home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :only => [:show]
end
