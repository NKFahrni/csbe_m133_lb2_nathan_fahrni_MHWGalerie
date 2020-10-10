class UserController < ApplicationController #SRC: https://3rd-edition.railstutorial.org/book/sign_up
  before_action :logged_in_user, only: [:edit, :update]
  before_action :correct_user, only:[:edit, :update]
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

  def edit  #SRC: https://3rd-edition.railstutorial.org/book/updating_and_deleting_users
    @user = User.find_by_id(params[:id])
  end

  # Confirms correct user SRC: https://3rd-edition.railstutorial.org/book/updating_and_deleting_users
  def correct_user
    @user = User.find_by_id([:id])
    redirect_to(root_path) unless @user == currentuser?(@user)
  end

  def update #handles successful edit/update SRC: https://3rd-edition.railstutorial.org/book/updating_and_deleting_users
    @user = User.find_by_id(params[:id])
    if @user.update_attributes(user_params)

      redirect_to root_path

    else
      render 'profil'
    end
  end

  def destroy
    User.find_by_id(params[:id]).destroy
    logout
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation)
  end

  #checks if user is logged in SRC: https://3rd-edition.railstutorial.org/book/updating_and_deleting_users
  def logged_in_user
    unless  loggedin?
      store_location
      redirect_to 'login/index_url'
    end
  end
end

