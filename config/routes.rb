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

  scope module: 'api', shallow: true  do
    scope module: 'v1', as: 'v1' do
      resources :users do
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

  root 'api/v1/jobs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
