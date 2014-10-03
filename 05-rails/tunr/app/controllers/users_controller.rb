class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = @current_user
  end

  def update
    user = @current_user
    user.update user_params
    redirect_to user
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar)
  end

end
