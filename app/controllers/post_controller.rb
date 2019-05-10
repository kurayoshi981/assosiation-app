class PostController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to :root
    else
      @post.valid?
      render action: :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:answer, :content, :hint01, :hint02, :hint03, :image).merge(user: current_user)
  end

end
