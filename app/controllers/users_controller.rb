class UsersController < ApplicationController

def new
   @user = User.new
end

  def show
    @user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user= User.find(params[:id])
    @user.update(user_params)
  if current_user.update(user_params)
    redirect_to user_path(@user.id)
  else
    render :edit
  end
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end
end