class WorkContent < ApplicationRecord
  has_many :student_work_contents
  has_many :company_work_contents
  has_many :post_work_contents
  has_many :posts, through: :post_work_contents
end
