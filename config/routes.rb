Rails.application.routes.draw do
  devise_for :users
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  concern :api_base do
    resources :breeds, concerns: :paginatable
    post 'auth_user' => 'authentication#authenticate_user'
    get 'home' => 'home#index'
  end

  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  namespace :v1 do
    concerns :api_base
  end

  root to: 'v1/breeds#index'

end
