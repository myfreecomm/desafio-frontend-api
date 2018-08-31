Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :customers, only: [:index]
      resources :profile, only: [:index]
    end
  end
end
