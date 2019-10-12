module SessionsHelper
  #渡されたユーザーでログイン
  def log_in(user)
    session[:user_id] = user.id
  end

  #現在ログイン中のユーザー
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  # ログインしてたらtrue
  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_uer = nil
  end

   # ログイン済みユーザーかどうか確認
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end  
end
