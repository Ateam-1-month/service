class Sector < ApplicationRecord
  has_many :student_sectors
  has_many :company_sectors
  has_many :post_sectors
end
