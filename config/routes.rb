Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  concern :api_base do
    resources :breeds, concerns: :paginatable
  end

  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  namespace :v1 do
    concerns :api_base
  end

  root to: 'v1/breeds#index'
end
