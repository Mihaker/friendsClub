class UserPostsController < ApplicationController


  def create
    @user = User.find(params[:user_id])
    @user_post = @user.user_post.new(post_params)
    if @user_post.save
      
    else 
      render 'users/show'
    end
    redirect_to user_path(@user)
  end

  private
    def post_params
      params.require(:user_post).permit(:body)
    end
end
