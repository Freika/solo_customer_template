# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users

  authenticate :user, ->(u) { u.admin? } do
    mount MissionControl::Jobs::Engine, at: "/jobs"
  end

  # We want to return a nice error message if the user is not authorized to access mission control
  match '/jobs' => redirect { |_, request|
                        request.flash[:error] = 'You are not authorized to perform this action.'
                        '/'
                      }, via: :get

  patch 'settings', to: 'settings#update'
end
