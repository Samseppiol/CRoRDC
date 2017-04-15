Rails.application.routes.draw do
  resources :comments
  resources :users
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Configuring our route to the welcome home link
  get 'welcome/home', to: 'welcome#home'
  get 'welcome/about', to: 'welcome#about'

end
