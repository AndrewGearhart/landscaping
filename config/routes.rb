Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/accounts/', to: 'accounts#get'
  get '/accounts/:name', to: 'accounts#get_one'

  post '/accounts/', to: 'accounts#create_account'
end
