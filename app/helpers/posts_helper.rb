module PostsHelper
  def post_params
    params.require(:post).permit(:title, :content, :tag_list, :image)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
