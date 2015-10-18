class PostsController < ApplicationController
  def index
    if params[:q].present?
      @posts = Post.where(title: params[:q])
    else
      @posts = Post.all
    end
  end
end
