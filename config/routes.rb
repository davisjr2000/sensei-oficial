Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show] do
    resources :students
    resources :senseis do
      resources :subjects
    end

  end
  resources :lessons do
    resources :payments
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
