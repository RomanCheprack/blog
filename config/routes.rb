Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  roots to: 'articles#index'
  resources :articles, expect: :index
end
