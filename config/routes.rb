Rails.application.routes.draw do
  get 'home/about'
  root to: 'users#top'

  devise_for :users, {
  	sessions: 'users/sessions',
    registrations: 'users/registrations'
  }



  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:index, :show, :edit, :create, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
