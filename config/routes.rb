Rails.application.routes.draw do
  # root "/" => "users#index"
  root :to => "users#index"
  get '/auth/:provider/callback', to: 'sessions#create'
end
