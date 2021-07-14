class PostsController < ApplicationController
  def index
    @posts = current_user.posts
    @post = current_user.posts.new
  end

  def create
    @post = current_user.posts.new(post_params)
    @post.save
  end


  private
  def post_params
    params.require(:post).permit(:tittle, :body)
  end
end
