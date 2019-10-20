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
    @current_user = nil
  end

   # ログイン済みユーザーかどうか確認
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
    false
  end

  # 会社アカウントか確認
  def company_user?
    unless !current_user.company.nil?
      flash[:danger] = "your account is student."
      redirect_to '/posts/index'
    end
  end

  # 学生アカウントか確認
  def student_user?
    unless !current_user.student.nil?
      flash[:danger] = "your account is company."
      redirect_to '/companies/home'
    end
  end
end
