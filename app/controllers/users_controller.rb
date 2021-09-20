class UsersController < ApplicationController
  def show
    @books = Book.new
    @user = User.find(params[:id])
  end

  def index
    @books = Book.new
    @user = current_user

  end

  def create
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def user_params
    params.require(:user).permit(:name, :image)
  end

end
