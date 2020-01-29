Rails.application.routes.draw do
  resources :articles
  get 'home', to: 'pages#home', as: :home
  get 'scanner', to: 'pages#scanner', as: :scanner
  get 'confirmation', to: 'pages#confirmation', as: :confirmation
  get 'pin', to: 'pages#pin', as: :pin
  get 'summary', to: 'pages#summary', as: :summary

  root to: 'pages#home'

  #root to: 'articles#index'
  resources :articles, except: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
