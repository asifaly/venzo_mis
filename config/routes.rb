Rails.application.routes.draw do

  resources :banks
  resources :activities
  root to: 'assignments#index'

  resources :assignments do
    collection do
      get :today
      get :yesterday
      get :thismonth
      get :lastmonth
    end
  end
  resources :tasks
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
