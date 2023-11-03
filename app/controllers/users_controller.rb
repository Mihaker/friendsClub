class UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.save 
      redirect_to root_path
    else 
      render :new
    end
    
  end
  
  def destroy
  end

  def edit; end

  def update 
  end

  def new
    @user = User.new
  end

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  private 

  def user_params
    params.require(:user).permit(:first_name, :last_name, :gender, :birthday, :email)
  end

end
