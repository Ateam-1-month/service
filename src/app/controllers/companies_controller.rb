class CompaniesController < ApplicationController
  before_action -> {
    logged_in_user || student_user?
  }, only: [:new, :create, :edit, :update, :destroy]
  
  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if current_user.company = @company
      flash[:success] = "アカウント登録に成功しました."
      redirect_to "/companies/#{@company.id}"
    else
      render 'new'
    end
  end

  def edit

  end

  def show
    @company = Company.find(params[:id])
  end

  def home
    
  end

  def update

  end

  def destroy

  end

  private
  def company_params
    params.require(:company).permit(:name, :image, :url, :address)
  end
end
