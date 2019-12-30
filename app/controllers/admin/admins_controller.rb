class Admin::AdminsController < ApplicationController
    def index
        @blog_posts = BlogPost.all 
    end
    def show
        @blog_post = BlogPost.find(params[:id])
    end
    def new
    end
end