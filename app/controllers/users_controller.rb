class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
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
    if @user != current_user
      redirect_to user_path(current_user)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "user info was updated successfully"
      redirect_to user_path(@user.id)
    else
      render :edit
    end

  end

  def user_params
    params.require(:user).permit(:name, :image, :profile_image, :introduction)
  end

end
