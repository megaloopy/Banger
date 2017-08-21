Rails.application.routes.draw do
  
  devise_for :users
  root to: "landers#home"
  
  resources :vehicles do
    resources :services do
      resources :oil_changes
      resources :tires
      resources :breaks
    end
  end
  
end