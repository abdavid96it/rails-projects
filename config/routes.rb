Rails.application.routes.draw do

  resources :userinfors
  #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts
  root to: 'home#index'

  devise_for :recruiters, path: 'recruiters',
  controllers: {
    sessions: "recruiters/sessions",
    registrations: "recruiters/registrations"
  }

  devise_for :users, path: 'users',
  controllers: {
    sessions: "users/sessions"
  }


  #resources :home
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
