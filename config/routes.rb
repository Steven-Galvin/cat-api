Rails.application.routes.draw do
  concern :api_base do
    resources :breeds
  end

  namespace :v1 do
    concerns :api_base
  end
  
end
