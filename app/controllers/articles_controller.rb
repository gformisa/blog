class ArticlesController < ApplicationController
  def index
    @articles = Article.all # This line fetches all articles from the database and assigns them to the @articles instance variable.
  end

  def show # This action is used to show a single article.
    @article = Article.find(params[:id]) # This line fetches the article from the database and assigns it to the @article instance variable.
  end
end
