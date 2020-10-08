class SessionController < ApplicationController #SRC: https://3rd-edition.railstutorial.org/book/log_in_log_out
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user&.authenticate(params[:session][:password])
      render '/profil/index'
    else
      render 'login/index'
    end
  end

  def destroy

  end
end