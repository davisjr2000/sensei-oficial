Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show] do
    resources :students
    resources :senseis do
      resources :sensei_subjects, only: [:create, :new, :destroy, :index]
    end
  end
  resources :subjects, only: [:index]
  resources :lessons


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
