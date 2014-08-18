class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    redirect_to offers_path
  end


  def edit
    @user = User.find(user_params)
  end

  def show
    @user = User.find(user_params)
  end

  def update
    @user = User.find(user_params[:id])
    @user.update(user_params)
    flash[:notice] = "User was edited"
    redirect_to user_path(user_params[:id])
  end

  def destroy
    @user = User.find(user_params[:id])
    @user.destroy
    flash[:notice] = "User was destroyed"
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone, :email)
  end

end
