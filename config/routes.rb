Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  root "groups#index"


  resources :users, only: [:index, :show] do
    resources :groups, only: [:new, :create, :index, :show] do
      resources :payments, only: [:new, :create, :index, :show] do
      end
    end

    resources :payments, only: [:index, :new, :create] do
    end
  end

  # resources :payments, only: [:new, :create, :index] do
  # end

end
