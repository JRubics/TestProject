class PostsController < ApplicationController

  before_action :require_login, except: [:index, :show]

  def index
    @posts = Post.all
    if params[:search]
      @posts = Post.search_title(params[:search]).order("created_at DESC")
      if @posts.present?
        return
      end
      @posts = Post.search_body(params[:search]).order("created_at DESC")
    else
      @posts = Post.all.order('created_at DESC')
    end
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
