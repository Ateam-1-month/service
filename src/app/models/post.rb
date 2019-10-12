class Post < ApplicationRecord
  belongs_to :company
  has_many :post_sectors
  has_many :sectors, through: :post_sectors
end
