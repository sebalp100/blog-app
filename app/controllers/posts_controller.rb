class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.author
    if params[:post_number]
      redirect_to user_post_path(@user, @post)
    end
    @post_number = @user.posts.find_index(@post) + 1
    rescue ActiveRecord::RecordNotFound
      render file: "#{Rails.root}/public/404.html", status: :not_found
  end
end
