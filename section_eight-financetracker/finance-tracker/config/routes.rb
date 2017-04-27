Rails.application.routes.draw do

  root 'welcome#index'
  devise_for :users
  resources :user_stocks, except: [:show, :edit, :update]
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stocks', to: 'stocks#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
