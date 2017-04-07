Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Change the home page to the root, so it will be the index/first page the user arrives on
  root 'pages#home'
  get 'about', to: 'pages#about'

end
