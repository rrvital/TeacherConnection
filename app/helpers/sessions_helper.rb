module SessionsHelper
  # Logs in the user.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns current user (if any)
  def current_user
    if session[:user_id] && User.exists?(session[:user_id])
      @current_user = User.find(session[:user_id]) 
    else
      @current_user = nil
    end
  end

  # Logs out the current user
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
