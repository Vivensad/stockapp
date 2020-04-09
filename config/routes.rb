Rails.application.routes.draw do
  devise_for :users
  get 'persons/profile'
  root 'mainpage#index'
end
