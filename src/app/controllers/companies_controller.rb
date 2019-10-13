class CompaniesController < ApplicationController
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

  def show

  end

  private
  def company_params
    params.require(:company).permit(:name, :image)
  end
end
