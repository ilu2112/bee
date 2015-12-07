class PostsController < ApplicationController
  def show
    @blog_post = BlogPost.find params[:id]
    redirect_to :root if @blog_post.published == false and @blog_post.preview_key != params[:preview_key]
  end
end
