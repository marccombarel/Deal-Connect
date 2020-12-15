Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root                   to: 'pages#home'
  get 'about',           to: 'pages#about',      as: :about
  get 'contact',         to: 'pages#contact',    as: :contact

  resources :companies, only: [:index] do
    resources :prospections, only: [:new, :create, :index, :destroy]
  end
end
