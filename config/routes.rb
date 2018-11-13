Rails.application.routes.draw do

  get 'lessons/index'
  get 'lessons/create'
  get 'lessons/new'
  get 'lessons/edit'
  get 'lessons/show'
  get 'lessons/update'
  get 'lessons/destroy'
  get 'subjects/index'
  get 'subjects/create'
  get 'subjects/new'
  get 'subjects/edit'
  get 'subjects/show'
  get 'subjects/update'
  get 'subjects/destroy'
  get 'sensei_subjects/index'
  get 'sensei_subjects/create'
  get 'sensei_subjects/new'
  get 'sensei_subjects/edit'
  get 'sensei_subjects/show'
  get 'sensei_subjects/update'
  get 'sensei_subjects/destroy'
  get 'students/index'
  get 'students/create'
  get 'students/new'
  get 'students/edit'
  get 'students/show'
  get 'students/update'
  get 'students/destroy'
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
