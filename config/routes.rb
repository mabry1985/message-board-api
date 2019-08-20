Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "groups#index"

  concern :api_base do
    resources :groups do
      resources :messages
    end
  end

  namespace :v1 do
    concerns :api_base
  end
end
