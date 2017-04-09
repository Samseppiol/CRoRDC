# Notes:

## I will use the readme doc of these projects for the notes I take during the video.


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
