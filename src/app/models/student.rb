class Student < ApplicationRecord
  belongs_to :user
  has_many :appeals
  has_many :careers
  has_many :skills
  has_many :student_sectors
  has_many :sectors, through: :student_sectors
  has_many :student_work_contents
  has_many :work_contents, through: :student_work_contents

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name_kana, presence: true
  validates :last_name_kana, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :prefecture, presence: true
  validates :university, presence: true
  validates :faculty, presence: true
end
