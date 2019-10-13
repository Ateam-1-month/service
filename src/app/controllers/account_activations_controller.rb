class AccountActivationsController < ApplicationController

  def edit
    user = User.find_by(email: params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.update_attribute(:activated,    true)
      user.update_attribute(:activated_at, Time.zone.now)
      flash[:success] = "アカウントの有効化に成功しました."
      log_in user
      if user.is_student
        redirect_to '/students/new'
      else
        redirect_to '/companies/new'
      end
    else
      flash[:danger] = "有効期限が切れています.もう一度登録を行ってください."
      if user.is_student
        redirect_to '/students/users/new'
      else
        redirect_to '/companies/users/new'
      end
    end
  end
end