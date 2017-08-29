class CommentsController < ApplicationController
    
  # Need to authenticate only for the destroy action
  http_basic_authenticate_with name: "rails", password: "rails", only: :destroy 
    
  def create
    # Comment is nested to article, so need to find the related one first  
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    # Call the show action of the ArticlesController to render show.html.erb  
    redirect_to article_path(@article)
  end
    
  def destroy
    # Find the corresponding article
    @article = Article.find(params[:article_id])
    # Find the corresponding comment
    @comment = @article.comments.find(params[:id])
    # Delete the article
    @comment.destroy
    redirect_to article_path(@article)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
