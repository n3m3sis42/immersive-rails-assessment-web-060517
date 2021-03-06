Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show, :update, :edit]
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:new, :create, :show]
end
