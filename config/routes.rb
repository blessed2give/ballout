Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:show]
  resources :locations do
    resources :pick_ups, except: [:index]
  end
  resources :pick_ups, except: [:index] do
    resources :pickup_users, only: [:create, :destroy]
  end
  get 'about' => 'welcome#about'
  root 'welcome#index'
end
