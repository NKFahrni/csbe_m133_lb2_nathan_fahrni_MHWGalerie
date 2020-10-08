class UserController < ApplicationController #SRC: https://3rd-edition.railstutorial.org/book/sign_up
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render 'register/index'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation)
  end
end

