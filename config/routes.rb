Rails.application.routes.draw do

  devise_for :admins
  devise_for :users
  get "admin", to: "admin#index"
  root to: "home#index"

end
