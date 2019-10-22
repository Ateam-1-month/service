class SummariesController < ApplicationController
  def new

  end

  def create
    summary = Summary.new(summary_params)
    summary.save
    render :json => summary
  end


  private
    def summary_params
      params.require(:summary).permit(:title, :content, :company_id)
    end
end
