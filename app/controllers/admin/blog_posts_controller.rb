class Admin::BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.all.order(:updated_at).reverse 
  end
  def show
    @blog_post = BlogPost.find(params[:id])
  end 

  def new
    @blog_post = BlogPost.new 
  end 

  def edit
    @blog_post = BlogPost.find(params[:id])
  end

  def create
    @blog_post = BlogPost.new(blog_post_params)

     if @blog_post.save
    redirect_to @blog_post
     else 
      render 'new'
     end 
  end

  def update
    @blog_post = BlogPost.find(params[:id])

    if @blog_post.update(blog_post_params)
      redirect_to @blog_post
    else
      render 'edit'
    end
  end 

  def destroy 
    @blog_post = BlogPost.find(params[:id])
    @blog_post.destroy

    redirect_to admin_root_path
  end

  def blog_post_params
    params.require(:blog_post).permit(:title, :content, :excerpt)
  end
end