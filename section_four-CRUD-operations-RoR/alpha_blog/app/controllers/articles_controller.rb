class ArticlesController <ApplicationController

  def new
    #Defining our instance variable of @ article = @article class.new
    @article = Article.new
  end

  def create
    #We use this code to display that our data is actually being recieved and passed through.
    #It will display as a hash.
    #render plain: params[:article].inspect
    #Creating our instance variable and passing in a method to it.
    @article = Article.new(article_params)
    @article.save
    #Though this works and the article saves, the application doesn't know what to display to the user.
    #So we simply redirect
    # redirect_to articles_show(@article)
  end

  private

  def article_params
    #Basically what we do here is require the paramaters of the key, in this case article.
    #And we are going to permit the values, the title and the description.
    params.require(:article).permit(:title, :description)
  end

end
