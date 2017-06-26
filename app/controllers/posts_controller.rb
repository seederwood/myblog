class PostsController < ApplicationController
  include PostsHelper

  before_action :find_post, only: %i[show edit destroy update]
  before_action :authenticate_user!, except: %i[index show]

  def index
    @posts = Post.all.order('created_at desc')
  end

  def show
    @comment = Comment.new
    @comment.post_id = @post_id
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)

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
end
