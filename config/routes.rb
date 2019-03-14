Rails.application.routes.draw do
  # scope module: 'api', shallow: true  do
  #   scope module: 'v2' do
  #     resources :tests do
  #       resources :bests do
  #         resources :nests
  #       end
  #     end
  #   end
  # end

  scope module: 'api' do
    scope module: 'v1' do
      resources :users, shallow: true do
        resources :jobs do
          resources :parts do
            resources :tasks do
              resources :comments
            end
          end
        end
      end
    end
  end

  get 'new_session', to: 'api/v1/sessions#new', as: 'new_session'
  post 'create_session', to: 'api/v1/sessions#create', as: 'create_session'
  get 'logout_session', to: 'api/v1/sessions#logout', as: 'logout_session'
  get 'recover_password', to: 'api/v1/sessions#recover_password', as: 'recover_password'

  root 'api/v1/users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
