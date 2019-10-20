class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if user.activated
        log_in user
        flash[:success] = 'ログインしました.'
        if user.company || user.student
          if user.is_student
            redirect_to '/posts/index'
          else
            redirect_to "/companies/#{user.company.id}"
          end
        else
          flash[:success] = 'プロフィール登録が完了していません.プロフィールを登録してください.'
          if user.is_student
            redirect_to '/students/new'
          else
            redirect_to '/companies/new'
          end
        end
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
    redirect_to '/login'
  end
end
