class ArticlesController < ApplicationController
  def new
  end
    
  def create
    # Map params[:article] to the respective database columns
    @article = Article.new(params[:article])
 
    # @article.save is responsible for saving the model in the database
    @article.save
    redirect_to @article
  end
end
