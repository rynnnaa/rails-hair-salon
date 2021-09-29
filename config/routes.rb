Rails.application.routes.draw do
  root 'welcome#home'
  get 'signin', to: 'sessions#signin'
  get 'sessions/create'
  get 'sessions/destroy', to: 'sessions#destroy'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
