Rails.application.routes.draw do
  resources :github_item

  get '/boom', controller: :application, action: :raise_error
end
