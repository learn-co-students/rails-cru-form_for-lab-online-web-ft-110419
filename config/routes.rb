Rails.application.routes.draw do
  resources :artists, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :genres, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :songs, only: [:new, :create, :show, :index, :edit, :update, :destroy]
  
  
  # get 'genres/new'

  # get 'genres/create'

  # get 'genres/edit'

  # get 'genres/update'

  # get 'genres/destroy'

  # get 'genres/index'

  # get 'genres/show'

  # get 'songs/new'

  # get 'songs/create'

  # get 'songs/edit'

  # get 'songs/update'

  # get 'songs/destroy'

  # get 'songs/index'

  # get 'songs/show'

  # get 'artists/new'

  # get 'artists/create'

  # get 'artists/edit'

  # get 'artists/update'

  # get 'artists/destroy'

  # get 'artists/index'

  # get 'artists/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
