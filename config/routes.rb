Rails.application.routes.draw do
  get 'buyer/page'
  get 'selection/page'
  resources :items
  resources :profiles
  root to: 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/payment', to:"buyer#payment"

end


