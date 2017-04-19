class ArticlesController <ApplicationController
  before_action :set_article, only: [:edit, :update, :show, :destroy]

  def index
    @articles = Article.paginate(page: params[:page], per_page: 5)
  end

  def new
    #Defining our instance variable of @ article = @article class.new
    @article = Article.new
  end

  def edit
    #basically so our edit method can see our article instance and we want it to see our article instance id.
  end

  def update
    if @article.update(article_params)
      flash[:success] = "Edit Successful"
      redirect_to article_path(@article)
    else
      render :edit
    end
  end

  def create
    #We use this code to display that our data is actually being recieved and passed through.
    #It will display as a hash.
    #render plain: params[:article].inspect
    #Creating our instance variable and passing in a method to it.
    @article = Article.new(article_params)
    @article.user = User.first
    #So basically if the article doesn't save we just want to render a new view
    if @article.save
      flash[:success] = "Successful Creation of Article"
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def show
    #Basically, we want to identify an article by its id/number.
  end

  def destroy
    @article.destroy
    flash[:danger] = "Deletion Successful"
    redirect_to articles_path
  end


  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    #Basically what we do here is require the paramaters of the key, in this case article.
    #And we are going to permit the values, the title and the description.
    params.require(:article).permit(:title, :description)
  end

end
