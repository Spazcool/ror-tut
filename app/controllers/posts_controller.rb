class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def new
    end

    def edit
    end

    def update
    end

    def show
        @post = Post.find(params[:id])
    end

    def destroy
    end

    def create
    end
end

# timestamp format for posts in postgresql : '2017-08-07 14:37:57.375559663+00:00:00'