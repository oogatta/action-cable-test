Rails.application.routes.draw do
  resources :community_messages
  resources :communities
  resources :messages
  devise_for :users
  root to: "rails/welcome#index"
end
