Rails.application.routes.draw do
  get 'users/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts
  get '/signup', to: "users#new", as: "signup"
  resources :users, only: [:create, :edit, :update] do 
    resources :posts, only: [:index]
  end

end
