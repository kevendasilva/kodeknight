Rails.application.routes.draw do
  root 'application#index'

  scope 'admin' do
    get '/index', to: 'application#admin_index', as: 'admin_index'
    resources :courses, except: [:show]
    resources :projects
  end
end
