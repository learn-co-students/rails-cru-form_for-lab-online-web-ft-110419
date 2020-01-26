Rails.application.routes.draw do
  resources :songs, only: [:index, :new, :create, :update, :edit, :show]
  resources :genres, only: [:new, :create, :update, :edit, :show]
  resources :artists, only: [:new, :create, :update, :edit, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
