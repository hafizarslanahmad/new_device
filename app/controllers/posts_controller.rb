class PostsController < ApplicationController

    def new
        @post = Post.new
    end

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
        @comment = @post.comments.build
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to posts_path, notice: "post successfully"
        else
            render :new
        end
    end

    private
    def post_params
        params.require(:post).permit(:tital, :post_field, :user_id)
    end
end
