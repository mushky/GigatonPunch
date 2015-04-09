SitepointYtVideos::Application.routes.draw do
  get "users/new"

  resources :users, :videos, only: [:index, :new, :create]

  root to: 'videos#index'
end
