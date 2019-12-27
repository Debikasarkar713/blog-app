class BlogPostsController < ApplicationController
  def new
  end 

  def create
    render plain: params[:blog_post].inspect
  end
end