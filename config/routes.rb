Rails.application.routes.draw do
  get 'usertasks/create'

  resources :tasks, only: [:index, :show] do
    resources :usertasks, only: [:create, :destroy]
  end

  resources :usertasks, only: :index

  root to: 'tasks#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
