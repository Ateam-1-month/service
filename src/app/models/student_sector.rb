class StudentSector < ApplicationRecord
  belongs_to :student
  belongs_to :sector
end
