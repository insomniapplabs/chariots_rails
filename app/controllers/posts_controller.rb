class PostsController < ApplicationController

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to dashboard_posts_path
    end
  end

  def show
    @post = Post.friendly.find(params[:id])
  end

  def update
    @post = Post.friendly.find(params[:id])
    if @post.update(post_params)
      redirect_to dashboard_posts_path
    end
  end

  def destroy
  	@post = Post.friendly.find(params[:id])
  	@post.destroy
  	redirect_to dashboard_posts_path
  end


  private
    def post_params
      params.require(:post).permit(:title, :pub_date, :end_date, :body, :slug)
    end

end
