class AccountActivationsController < ApplicationController

  def edit
    user = User.find_by(email: params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.update_attribute(:activated,    true)
      user.update_attribute(:activated_at, Time.zone.now)
      flash[:success] = "アカウントの有効化に成功しました."
      log_in user
      redirect_to '/users/new'
    else
      flash[:danger] = "有効期限が切れています.もう一度登録を行ってください."
      redirect_to `/users/new`
    end
  end
end