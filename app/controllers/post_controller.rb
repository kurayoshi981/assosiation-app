class PostController < ApplicationController
  before_action :set_post, only: %i(edit update destroy show)

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

  def show
  end

  def edit
  end

  def update
    if @post.update_attributes(post_params)
      redirect_to root
    else
      @post.valid?
      render action: :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to :root
  end

  private
  def post_params
    params.require(:post).permit(:answer, :content, :hint01, :hint02, :hint03, :image).merge(user: current_user)
  end

  def set_post
    @post = Post.find_by(id: params[:id])
  end
end
