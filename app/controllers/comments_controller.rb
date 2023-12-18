class CommentsController < ApplicationController
    
    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            redirect_to new_post_path, notice: "comment"
        else
            render :new
        end
    end

    private
    def comment_params
        params.require(:comment).permit(:comment, :user_id, :post_id )
    end
end
