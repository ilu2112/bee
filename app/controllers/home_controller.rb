class HomeController < ApplicationController
  def index
    @blog_posts = BlogPost.where(published: true).order created_at: :desc
  end
end
