Rails.application.routes.draw do
  
  get 'contacts/new'

  get 'contacts/create'

  devise_for :users
  root to: "landers#home"
  
  resources :vehicles do
    resources :services do
      resources :oil_changes
      resources :tires
      resources :breaks
    end
  end
  
  match '/contacts', to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]
  
end