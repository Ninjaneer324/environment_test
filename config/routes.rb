Rails.application.routes.draw do
  resources :books do
    member do
      get :delete
    end
  end
  resources :users do
    member do
      get :delete
    end
  end
  resources :books_owneds do
    member do
      get :delete
    end
  end
  root 'books_owneds#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end