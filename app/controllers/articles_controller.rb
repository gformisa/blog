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

  def edit # This action is used to edit an existing article.
    @article = Article.find(params[:id]) # This line fetches the article from the database and assigns it to the @article instance variable.
  end

  def update # This action is used to update an existing article.
    @article = Article.find(params[:id]) # This line fetches the article from the database and assigns it to the @article instance variable.
    if @article.update(article_params) # This line updates the article in the database.
      redirect_to article_path(@article) # This line redirects to the show page for the updated article.
    else
      render :edit, status: :unprocessable_entity # This line renders the edit template.
    end
  end

  def destroy # This action is used to destroy an existing article.
    @article = Article.find(params[:id]) # This line fetches the article from the database and assigns it to the @article instance variable.
    @article.destroy # This line destroys the article in the database.
    redirect_to articles_path, status: :see_other # This line redirects to the index page for the articles.
    flash[:notice] = "Article was successfully destroyed." # This line sets a flash notice message.
  end

  private
  def article_params
    params.require(:article).permit(:title, :body) # This line allows the title and body parameters to be passed to the create action.
  end
end
