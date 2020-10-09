class SessionController < ApplicationController #SRC: https://3rd-edition.railstutorial.org/book/log_in_log_out
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      login user
      redirect_to root_path
    else
      flash.now[:error] = 'Invalid username/password combination'
      render 'login/index'
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end