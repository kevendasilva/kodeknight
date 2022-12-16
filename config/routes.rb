Rails.application.routes.draw do
  root 'application#index'
  get '/projeto/:slug', to: 'application#projeto', as: 'projeto'

  scope '/pessoa_humana' do
    devise_for :admins, controllers: {
      registrations: 'admins/registrations'
    }
  end

  authenticate :admin do
    scope '/ugly' do
      get '/index', to: 'application#admin_index', as: 'admin_index'
      resources :courses, except: [:show]
      resources :projects
    end
  end
end
