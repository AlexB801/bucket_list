Rails.application.routes.draw do
  root 'lists#index'

  resources :lists do
    resources :destinations
  end

  resources :lists do
    resources :activities
  end

end
