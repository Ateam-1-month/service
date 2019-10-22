class StudentsController < ApplicationController
  before_action :logged_in_user, only: [:show, :index]
  before_action -> {
    logged_in_user || student_user?
  }, only: [:new, :create, :edit, :update, :destroy]

  def index

  end
  
  #studentのプロフィール登録画面
  def new
    @student = Student.new
  end

  #studentのプロフィール登録メソッド
  def create
    @student = Student.new(student_params)
    if current_user.student = @student
      flash[:success] = "アカウント登録に成功しました."
      redirect_to "/students/#{@student.id}"
    else
      render 'new'
    end
  end

  #マイページ
  def show
    @student = Student.find(params[:id])
    @career = Career.new
  end

  def edit

  end

  def update

  end

  def destroy

  end

  def top
    
  end

  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :gender, :age, :prefecture, :university, :faculty, :image)
    end
end
