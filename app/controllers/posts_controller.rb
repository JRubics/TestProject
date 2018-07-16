class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new(user_id: params[:user_id])
  end

  def create
    puts post_params
    @post = Post.new(post_params)
    @post.save

    redirect_to @post.user
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to @post.user
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to @post.user
  end

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end
end
