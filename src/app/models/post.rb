class Post < ApplicationRecord
  belongs_to :company
  has_many :post_sectors
  has_many :sectors, through: :post_sectors
  has_many :post_fields
  has_many :fields, through: :post_fields
  has_many :applies
  has_many :students, through: :applies
  has_many :post_work_contents
  has_many :work_contents, through: :post_work_contents
end
