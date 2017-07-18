Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  
  concern :api_base do
    resources :breeds
  end

  namespace :v1 do
    concerns :api_base
  end

end
