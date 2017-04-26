class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.create(post_params)
    redirect_to post_path(@post)
  end

  private

  def post_params
    params.require(:post).permit(:title, :author, :body, :img_url)
  end

end
