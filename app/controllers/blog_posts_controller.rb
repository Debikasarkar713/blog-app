class BlogPostsController < ApplicationController
  def show
    @blog_post = BlogPost.find(params[:id])
  end 

  def new
  end 

  def create
    @blog_post = BlogPost.new(blog_post_params)

    @blog_post.save
    redirect_to @blog_post
  end

  def blog_post_params
    params.require(:blog_post).permit(:title, :content)
  end
end