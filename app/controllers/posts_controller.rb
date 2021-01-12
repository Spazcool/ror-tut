class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
        @category = Category.all
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        params.permit!
        @post = Post.find(params[:id])
        if @post.update(params[:post])
            redirect_to post_path, :notice => 'post has been updated'
        else
            render 'edit'
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path, :notice => 'dun der deleted'
    end

    def create
        params.permit!
        @post = Post.new(params[:post])

        if @post.save
            puts 'worked'
            redirect_to posts_path, :notice => 'the thang has been dun saved'
        else
            puts 'not worked'
            render 'new'
        end
    end
    def post_params
        # params.require(:title, :body, :category)
        # params [:post] .require(:title, :body, :category)
    end
end

# timestamp format for posts in postgresql : '2017-08-07 14:37:57.375559663+00:00:00'