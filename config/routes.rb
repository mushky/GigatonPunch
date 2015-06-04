SitepointYtVideos::Application.routes.draw do
  get "users/new"

  resources :users, :videos, only: [:index, :new, :create, :show]

  root to: 'videos#index'
end
