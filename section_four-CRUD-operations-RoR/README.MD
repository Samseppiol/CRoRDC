# Rails Naming Conventions

## For Example Article

## Model Name
> Singular, First letter uppercase(camelcase)

## Table Name
>Plural, lower case of model name

## Model name filename
> All lowercase but singular, article.rb

## Controller name
> Plural of model, so articles_controller.rb

# Another example

## Users

## Model name: User

## Model Filename
> user.rb

## Controller Name
> users_controller.rb

# Rails Console

## If you make a change in the ruby code you have to write reload! to update the rails console

> A playground where we can test out database connections, methods, basically anything.

> For example in rails console we want to check our article.rb file. We can type Article.all and it will show us all the relationships of that particular file/class

> We can also type Article and it shows exactly what data types it is. For example: integer, title: string, description: text, created_at: datetime, updated_at: datetime

> We can test these data types by typing in article = Article.new. For now everything will be nil because they are empty/null.

> We can even input data in to our article class in rails console simply but saying which one we want to fill in. For example we want to fill in the description we simply type article.descrription = "This is a description"

> To save anything we simply type article.save and it commits it to the table and generates a SQL transaction. VERY COOL!!

## However, we can do all of this in one line!

> article = Article.new(title: "This is the second article", description: "This is the second description") and then type article.save

## But once again there is an even better way of doing it!

> Article.create(title: "Third Article", description: "The third article description")
This will go directly in to the database so we don't have to run article.save

## Editing an article.

> First we have to set the article to a variable like so. var = Article.find(2) in this case we are selecting the article by its id, so the 2nd article. Then it is as simple as saying var.title = "We just edited the title" and hitting enter and save it with article.save

## Destroying an article

> Once again set a variable. x = Article.find(3) and then x.destroy. Run Article.all to check to see if it has deleted.

## Testing validation
> We discovered in our rails console that if you enter an empty article it will still register to the
  database which is very bad. So the point of the article model is to add validations to make sure that doesnt happen! With validators in place if you try to push to the database it will rollback and not save.

> But what if we have an error and we don't know why. You simply type article.errors.any? if true then there are obviously errors and false then no errors. If you have errors you simply type article.errors.full_messages  in this case it will say something like "title cant be blank" which means our validator code is working.

# Routing

> So we created new routes for our new articles page. Simply by typing 'resources :articles', rails appears
to generate 8 new routes for us. Articles: #index, #create, #new, #edit, #show, #update, #update and #destroy.

# Creating Articles
> So basically we created a controller, a model and a view for our articles.
> We had to define a number of methods in the articles controller starting with the 'new' method which basically just called the article class model and assigned to the "@article" instance variable. We then defined a create method, calling @article = Article.new(article_params) where article params is a private method we call for, and @article.save to save the inputted article to the database. We then define our private method article_params where we set the parameters of the key 'article' and permit the parameters we want to specify, in this instance the title and the description. With the code:

> def article_params<br>
    params.require(:article).permit(:title, :description)<br>
  end

# New And Show Actions

> In our articles controller we want to write an if statement to basically say: <br> if @article.save<br> flash[:notice] = "Messsage we want to display"<br> else<br> render :new <br>end<br>a new view. When we use render, we can either do 'render :new' or "render 'new'"

## Application.html.erb

> This view document is the document that every other view inherits from, basically anything on this page will be displayed to all other pages. So we have to create a view/display for our flash notice code we wrote before simply by writing flash.each do |name, msg| then passing in msg in an unordered list in embedded ruby and remembering to end the loop.

## Displaying our validation errors

> If our validation stops the user from creating an article on the web interface we need to give them an error message as to why. We simply go to the new.html.erb file and write an if  statement. Basically if @article.errors.any?, we create a loop which will display the errors like this: @article.errors.full_messages.each do |msg| then display it in an unordered list, like so: <li><%=msg%></li>

# Edit Articles

> We first start off by checking the route with rails/rake routes in the terminal. It shows the edit route is /articles/:id/edit so articles, whatever the article id is and then edit. If we type this in to the browser we get an error which says the action edit could not be found in ArticlesController. So we have to go create a method.
<li> Create a method in the controller </li>
<li> Create a template in views </li>
<li> Because the code/output will be 99% the same we copy the code from our new.html.erb </li>
<li> Create an update method </li>
<li> Basically the same as the create method we defined before </li>
<li> Another if statement,<br> if article.update(article_params)<br> flash[:notice] "message to display", else render :edit<br> end </li>
