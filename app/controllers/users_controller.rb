class UsersController < ApplicationController
  def new 
    @user = User.new
  end 

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to Alpha-Blog, #{@user.username}!"
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "Your Account updated successfully"
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def upload
    @user = User.find(params[:id])
    if @user.update(avatar_param)
    flash[:success] = "Your Avatar updated successfully"
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def avatar_param
    params.require(:user).permit(:avatar)
  end
end