Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:show]
  resources :locations
  get 'about' => 'welcome#about'
  root 'welcome#index'
end
