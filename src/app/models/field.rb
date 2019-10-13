class Field < ApplicationRecord
  has_many :post_fields
  has_many :posts, through: :post_fields
end
