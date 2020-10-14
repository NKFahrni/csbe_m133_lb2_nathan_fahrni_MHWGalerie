module SessionHelper

  # Logs in the current/given User SRC: https://3rd-edition.railstutorial.org/book/log_in_log_out
  def login(user)
    session[:user_id] = user.id
  end

  #returns true if the user is the current user SRC: https://3rd-edition.railstutorial.org/book/updating_and_deleting_users
  def currentuser?(user)
    user == currentuser
  end

  # Returns the current Logged-in user if any are logged in SRC: https://3rd-edition.railstutorial.org/book/log_in_log_out
  def currentuser
    @currentuser = User.find(id: session[:user_id])
  end

  #Returns true if the user is logged in, false when otherwise SRC: https://3rd-edition.railstutorial.org/book/log_in_log_out
  def loggedin?
    !currentuser = nil?
  end

  #logs the current user out SRC: https://3rd-edition.railstutorial.org/book/log_in_log_out
  def logout
    session.delete(:user_id)
    @currentuser  = nil
  end

  #redirects to stored location (or to the default)
  def redirect_back_to(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  #stores the URL trying to be aaccessed
  def store_location
    session[:forwarding_url] = request_url if request.get?
  end
end
