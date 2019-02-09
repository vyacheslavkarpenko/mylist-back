Rails.application.routes.draw do
  resources :users do
    resources :jobs do
      resources :parts do
        resources :tasks do
          resources :comments
        end
      end
    end
  end
  resources :items
  # resources :stories
    namespace :api do
      namespace :v1 do
        resources :lists
      end
    end
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end