class CareersController < ApplicationController
  def new

  end

  def create
    career = Career.new(career_params)
    career.save
    render :json => career
  end


  private
    def career_params
      params.require(:career).permit(:name, :content, :role, :start_date, :end_date, :student_id)
    end
end
