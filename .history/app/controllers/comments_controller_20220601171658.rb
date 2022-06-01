# エラー原因: redirect_to　の先が指定されていない
# 修正の意図: routingエラー解消の為

class CommentsController < ApplicationController
  before_action :set_blog, only: [:create, :destroy]

  def create
    @comment = @blog.comments.create(comment_params)
    redirect_to blog_path(@blog)

    if @comment.save
      redirect_to blog_path(@blog)
    else
      redirect_to blog_path(@blog), notice: "だめです"
    end
    redirect_to blog_path(@blog)
    
  end

  def destroy

    @comment = @blog.comments.find(params[:id])
    @comment.destroy
    redirect_to blog_path(@blog)
  end

  private

  def set_blog
    @blog = Blog.find(params[:blog_id])
  end

  def comment_params
    params.require(:comment).permit(:name, :content, :blog_id)
  end
end
