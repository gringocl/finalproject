class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :edit, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params

    if @post.save
      redirect_to @post, notice: 'Post has been created!'
    else
      flash[:alert] = 'Post has not been created.'
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    
    if @post.update(post_params)
    redirect_to @post, notice: 'Post has been updated.'
    else
      flash[:alert] = 'Post has not been updated.'
      render 'edit'
    end
  end

  def destroy
    @post.destroy

    redirect_to posts_path, notice: 'Post has been deleted!'
  end
  
  private

    def post_params
      params.require(:post).permit(:title, :content)
    end

    def set_post
      @post = Post.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to posts_path, alert: "The post you were looking for could not be found."
    end
end
