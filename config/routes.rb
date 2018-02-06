Rails.application.routes.draw do

  resources :banks
  resources :activities
  root to: 'home#dashboard'

  resources :assignments do
    collection do
      get :today
      get :yesterday
      get :thismonth
      get :lastmonth
      get :byuser
    end
  end
  resources :tasks
  devise_for :users
  resources :users, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
