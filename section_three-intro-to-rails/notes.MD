# MVC - Model, View, Controller

## General flow of Rails application:

> Request made at browser

> Request received at router of rails application

> Request routed to appropriate controller

> Controller either renders a view template or communicates with model

> Model communicates with database

> Model sends back information to controller

> Controller renders view

# Rake Routes
> To find the routes in your app use 'rake routes'

# Setup of two easy pages

> First add the route: get 'pages/home', to: 'pages#home'
then add the controller: create a rb in controllers, define a class with methods that you are calling, eg home, about would be def home end def about end.
then add the html doc to the views, create a new file to be called by the controller and create
html.erb files to be views.

# Links
> Whenever we want to call embedded ruby code in the html docs, we use '<% %>'
> However when we want to display something to the page you have to put '=' after wards like so
> <%= 'blahblah %>'
