class HomeController < ApplicationController
  def index
    @post = Post.order("created_at DESC").page(params[:page]).per(5)
  end
end
