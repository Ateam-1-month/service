class CompaniesController < ApplicationController
  before_action -> {
    logged_in_user || company_user?
  }, only: [:new, :create, :edit, :update, :destroy, :home]
  
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
    @summary = Summary.new
  end

  def home
    @posts = current_user.company.posts
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
