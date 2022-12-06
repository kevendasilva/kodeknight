Rails.application.routes.draw do
  root 'application#index'

  resources :courses, except: [:show]
  resources :projects
end
