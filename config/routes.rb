Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :customers, only: :show do
        resources :subscriptions, only: :create #[:index, :create, :update]
      end
    end
  end
end
