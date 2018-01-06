Rails.application.routes.draw do
  root "artists#index"

  resources :artists, only: [:index, :show, :destroy]
  # get "artists" => "artists#index"
  # get "artists/:id" => "artists#show", as: :artist
  # delete "artists/:id" => "artists#destroy"

end
