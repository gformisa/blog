class ArticlesController < ApplicationController
  def index
    @articles = Article.all # This line fetches all articles from the database and assigns them to the @articles instance variable.
  end

  def show # This action is used to show a single article.
    @article = Article.find(params[:id]) # This line fetches the article from the database and assigns it to the @article instance variable.
  end

  def new # This action is used to create a new article.
    @article = Article.new # This line creates a new article object and assigns it to the @article instance variable.
  end

  def create # This action is used to create a new article.
    @article = Article.new(article_params) # This line creates a new article object and assigns it to the @article instance variable.
    if @article.save # This line saves the new article to the database.
      redirect_to article_path(@article) # This line redirects to the show page for the new article.
    else
      render :new, status: :unprocessable_entity # This line renders the new template.
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :body) # This line allows the title and body parameters to be passed to the create action.
  end
end
