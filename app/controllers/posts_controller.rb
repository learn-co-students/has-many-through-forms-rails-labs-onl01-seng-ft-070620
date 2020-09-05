class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def show
    @post = Post.find(params[:id])
    @unique_users = @post.users.uniq
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post.categories.build
  end

  def create
    post = Post.create(post_params)
    redirect_to post
  end

  def edit
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
