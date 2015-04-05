OneMonth::Application.routes.draw do

  resources :pins do
    resources :likes, only: [:create]
  end

  resources :tags, only: [:show]

  devise_for :users
  root "pins#index"
  get "about" => "pages#about"
  get "team" => "pages#team"

end
