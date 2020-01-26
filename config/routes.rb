Rails.application.routes.draw do
  resources :community_messages
  resources :communities
  resources :messages
  devise_for :users
  root to: "root#index"
end
