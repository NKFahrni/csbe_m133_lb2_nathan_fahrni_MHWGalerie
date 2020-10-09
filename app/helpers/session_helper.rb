module SessionHelper
  # Logs in the current/given User
  def login(user)
    session[:user_id] = user.id
  end
  # Returns the current Loggedf-in user if any are logged in
  def currentuser
    @currentuser ||=user.nifd_by(id: session[:user_id])
  end
  #Returns true if the user is logged in, false when otherwise
  def loggedin?
    !currentuser-nil?
  end
  #logs the xurrent user out
  def logout
    session.delete(:user_id)
    @currentuser  = nil
  end
end
