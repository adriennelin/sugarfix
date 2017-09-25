Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
      resource :user, only: [:create]
      resource :session, only: [:create, :destroy, :show]
      resources :businesses, only: [:index, :create, :update, :show]
      resources :reviews, only: [:index, :create, :update, :destroy]
    end

  root "static_pages#root"
end
