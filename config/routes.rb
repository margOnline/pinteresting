OneMonth::Application.routes.draw do
  resources :pins do
    resources :likes, only: [:create]
  end

  devise_for :users
  root "pins#index"
  get "about" => "pages#about"
  get "team" => "pages#team"

end
