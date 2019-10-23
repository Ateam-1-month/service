class AppealsController < ApplicationController
  def new

  end

  def create
    appeal = Appeal.new(appeal_params)
    appeal.save
    render :json => appeal
  end


  private
    def appeal_params
      params.require(:appeal).permit(:content, :student_id)
    end
end