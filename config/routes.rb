Rails.application.routes.draw do

  root to: 'home#dashboard'
  resources :bankcontacts
  resources :roles
  resources :contacts
  resources :banks
  resources :activities
  resources :tasks
  resources :assignments do
    collection do
      get :today
      get :yesterday
      get :thismonth
      get :lastmonth
      get :byuser
    end
  end
  devise_for :users
  resources :users, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
