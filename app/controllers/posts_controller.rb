class PostsController < ApplicationController
  def index
    if params[:q].present?
      @posts = Post.text_search(params[:q])
    else
      @posts = Post.all
    end
  end
end
