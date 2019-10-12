class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if user.activated
        log_in user
        flash[:success] = 'ログインしました.'
        redirect_to '/users/new'
      else
        flash[:success] = 'まだ本登録ができていません.'
        redirect_to '/login'
      end
    else
      flash.now[:danger] = 'メールアドレスもしくはパスワードが間違っています.'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to '/'
  end
end
