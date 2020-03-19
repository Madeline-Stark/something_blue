class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit]
  before_action :current_user

  def index
    @posts = Post.all
  end

  def show
    
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create(post_params)
    redirect_to post_path(@post)
  end

  def edit
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def current_user
    User.first
  end
end
