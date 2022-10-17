Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
      namespace :webhooks do
        post :payload
      end

      resources :issues, only: [] do
        resources :events, only: %i[index]
      end
    end
  end
end
