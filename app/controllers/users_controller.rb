class UsersController < ApplicationController
  def show
    @books = Book.new
    @user = User.find(params[:id])
    @books = @user.books.page(params[:page]).reverse_order
  end

  def index
    @books = Book.new
    @users = User.all
    @user = current_user

  end

  def create
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def user_params
    params.require(:user).permit(:name, :image, :profile_image, :introduction)
  end

end
