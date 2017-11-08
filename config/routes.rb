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
  
  resources 'contacts', only: [:new, :create], path_names: { new: '' }
  if Rails.env.development?
   mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
end