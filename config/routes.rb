require 'sidekiq/web'

Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users

  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  # We want to return a nice error message if the user is not authorized to access Sidekiq
  match '/sidekiq' => redirect { |_, request|
                        request.flash[:error] = 'You are not authorized to perform this action.'
                        '/'
                      }, via: :get

  patch 'settings', to: 'settings#update'
end
