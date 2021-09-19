class UsersController < ApplicationController
  def show
    @books = Book.new
    @user = User.find(params[:id])
  end

  def index
    @books = Book.new

  end

  def create
  end

  def user_params
    params.require(:user).permit(:name, :image)
  end

end
