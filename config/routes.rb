SitepointYtVideos::Application.routes.draw do
  get "users/new"
  get "vides/show"

  resources :users, :videos, only: [:index, :new, :create, :show]

  root to: 'videos#index'
end
