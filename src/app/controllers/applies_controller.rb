class AppliesController < ApplicationController
  before_action -> {
    logged_in_user || student_user?
  }, only: [:create]
  
  def create
    apply = Apply.new(post_id: params[:post_id], student_id: params[:student_id])
    if apply.save
      flash[:success] = "応募しました."
    else
      flash[:danger] = "応募に失敗しました。もう一度応募してください。"
    end
    redirect_to "/posts/#{params[:post_id]}"
  end
end
