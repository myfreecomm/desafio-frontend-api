Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :customers, only: [:index]
      resources :profile, only: [:index]
    end
  end
end
