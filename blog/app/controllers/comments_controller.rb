class CommentsController < ApplicationController
  def create
    # Comment is nested to article, so need to find the related one first  
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    # Call the show action of the ArticlesController to render show.html.erb  
    redirect_to article_path(@article)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
