Rails.application.routes.draw do

  get 'users/show'
  # get 'availabilities/new'
  # get 'availabilities/create'
  # get 'availabilities/show'
  # get 'availabilities/index'
  # get 'availabilities/edit'
  # get 'availabilities/update'
  # get 'availabilities/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show] do
    resources :students
    resources :senseis do
      resources :sensei_subjects, only: [:create, :new, :destroy, :index]
      resources :availabitities, only: [:new, :create, :index, :edit, :update, :destroy]
    end
  end
  resources :subjects, only: [:index]
  resources :lessons


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
