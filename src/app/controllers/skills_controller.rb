class SkillsController < ApplicationController
  def new

  end

  def create
    skill = Skill.new(skill_params)
    skill.save
    render :json => skill
  end


  private
    def skill_params
      params.require(:skill).permit(:name, :content, :level, :student_id)
    end
end