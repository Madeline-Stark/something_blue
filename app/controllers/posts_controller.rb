class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit]
  before_action :current_user

  def index
    #if we are coming from a nested route
    @user = User.find_by(id: params[:user_id])
    if @user
      @posts = @user.posts
       #we only want to see that user's posts

    else 
    #load all the posts
      @posts = Post.all
    end
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
