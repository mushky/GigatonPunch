SitepointYtVideos::Application.routes.draw do
  get "users/new"
  get "vides/show"

  resources :users, :videos, only: [:index, :new, :create, :show] do 
  	resources :comments
  end

  root to: 'videos#index'
end
