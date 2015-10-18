class PostsController < ApplicationController
  def index
    @posts = Post.all
    if params[:q].present?
    end
  end
end
