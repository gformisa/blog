class ArticlesController < ApplicationController
  def index
    @articles = Article.all # This line fetches all articles from the database and assigns them to the @articles instance variable.
  end
end
