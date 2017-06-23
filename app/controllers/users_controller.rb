class UsersController < ActionController::Base
  def index
    @user = User.find(params[:id])
    @posts = @user.posts
  end
end
