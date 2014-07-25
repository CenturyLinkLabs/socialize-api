Rails.application.routes.draw do
  resources :github_items

  get '/boom', controller: :application, action: :raise_error
end
