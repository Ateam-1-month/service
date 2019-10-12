class Student < ApplicationRecord
  belongs_to :user
  has_many :appeals
  has_many :careers
  has_many :skills
  has_many :student_sectors
  has_many :sectors, through: :student_sectors
  has_many :student_work_contents
  has_many :work_contents, through: :student_work_contents
end
