Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :locations, only: %i[index] do
    resources :beaches, only: %i[index show] do
      resources :rides, only: %i[index new create]
    end
  end

  resources :rides, only: %i[delete]
end
