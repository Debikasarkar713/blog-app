class HomeController < ApplicationController
    def index
        @blog_posts = BlogPost.all.order(:updated_at).reverse
    end
    def show
        @blog_post = BlogPost.find(params[:id])
    end
    def new
    end
end