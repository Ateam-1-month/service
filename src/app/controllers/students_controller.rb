class StudentsController < ApplicationController
  before_action :logged_in_user
  def index

  end
  
  #studentのプロフィール登録画面
  def new

  end

  #studentのプロフィール登録メソッド
  def create

  end

  #マイページ
  def show
    @student = Student.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
