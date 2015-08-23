SitepointYtVideos::Application.routes.draw do
  devise_for :users

  get "users/new"
  get "vides/show"

  resources :users, :videos, only: [:index, :new, :create, :show] do 
  	resources :users, :comments
  end

  root to: 'videos#index'
end
