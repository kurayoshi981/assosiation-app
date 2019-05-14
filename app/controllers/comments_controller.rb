class CommentsController < ApplicationController

    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.build(comment_params)
        if @comment.save!
            redirect_to :root
        end
    end

    def destroy
        @comment = Comment.find(params[:id])
        if @comment.destroy
            redirect_to :root
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:guestsHint, :post_id).merge(user_id: current_user.id)
    end
end
