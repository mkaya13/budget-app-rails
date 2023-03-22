Rails.application.routes.draw do
  devise_for :users
  root "groups#index"

  resources :users, only: [:index, :show] do
    resources :groups, only: [:new, :create, :index, :show, :destroy] do
      resources :payments, only: [:new, :create, :index, :show] do
      end
    end

    resources :payments, only: [:index, :new, :create] do
    end
  end
end
