helpers do

  def current_user
    return User.find_by(id: session[:id])
  end

  def logged_in?
    if session[:id].nil?
      return false
    else
      return true
    end
  end

  def logout
    session[:id] = nil
  end

end