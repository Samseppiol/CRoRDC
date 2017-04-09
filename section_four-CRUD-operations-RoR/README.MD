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
>  # We discovered in our rails console that if you enter an empty article it will still register to the
  #database which is very bad. So the point of the article model is to add validations to make sure that doesnt happen! With validators in place if you try to push to the database it will rollback and not save.

> But what if we have an error and we don't know why. You simply type article.errors.any? if true then there are obviously errors and false then no errors. If you have errors you simply type article.errors.full_messages  in this case it will say something like "title cant be blank" which means our validator code is working.
