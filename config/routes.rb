Rails.application.routes.draw do
  root "artists#index"

  # get "artists" => "artists#index"
  # get "artists/:id" => "artists#show", as: :artist
  # delete "artists/:id" => "artists#destroy"
  resources :artists, only: [:index, :show, :destroy] do
    resources :songs, only: [:create, :destroy]
  end
  # get "songs/new" => "songs#new", as: :new_song




end
