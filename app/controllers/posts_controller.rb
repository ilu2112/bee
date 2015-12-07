class PostsController < ApplicationController
  
  def show
    @blog_post = BlogPost.find params[:id]
    @comment = Comment.new
    redirect_to :root if @blog_post.published == false and @blog_post.preview_key != params[:preview_key]
  end


  def add_comment
    @comment = Comment.new
    comment_data = params[:comment].permit(
      :name,
      :email,
      :website,
      :comment,
    )
    @comment.assign_attributes(comment_data)
    @blog_post = BlogPost.find params[:id]
    @comment.blog_post = @blog_post
    if @comment.save
      flash[:comment_status] = "comment_added"
      redirect_to action: 'show', id: params[:id]
    else
      flash.now[:comment_status] = "comment_error"
      render :show
    end
  end
end
