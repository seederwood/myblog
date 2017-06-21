class PostsController < ApplicationController
  before_action :find_post, except: %i[index create new]

  def index
    @posts = Post.all.order('created_at desc')
  end

  def show; end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: "Post #{@post.title} was created successfully!"
    else
      render 'new', notice: 'Something went wrong.  Please try again.'
    end
  end

  def edit; end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "Post #{@post.title} was Updated successfully!"
    else
      render 'edit', notice: 'Something went wrong.  Please try again.'
    end
  end

  def destroy
    @post.delete

    redirect_to posts_path, notice: "Post #{@post.title} was Deleted successfully!"
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
