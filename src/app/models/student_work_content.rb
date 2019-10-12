class StudentWorkContent < ApplicationRecord
  belongs_to :student
  belongs_to :work_content
end
