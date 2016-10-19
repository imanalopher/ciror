Rails.application.routes.draw do
  root :to => "users#index"
  get '/auth/:provider/callback', to: 'sessions#create'
  get  '/sign_out',  to: 'sessions#destroy'
end
