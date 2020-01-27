Rails.application.routes.draw do


  resources :artists, only: [:update, :edit, :create, :new, :show, :index]
  resources :songs, only: [:update, :edit, :create, :new, :show, :index]
  resources :genres, only: [:update, :edit, :create, :new, :show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
