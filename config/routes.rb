Rails.application.routes.draw do
  get 'witch/myrecipes'

  root to: 'recipes#index'

  resources :recipes
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
