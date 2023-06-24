Rails.application.routes.draw do
  root 'homes#landing'
  get '/top', to: 'homes#top'

  resources :places
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
