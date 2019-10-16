class Company < ApplicationRecord
  belongs_to :user
  has_many :posts
  has_many :reviews
  has_many :summaries
  has_many :company_sectors
  has_many :sectors, through: :company_sectors
  has_many :company_business_contents
  has_many :business_contents, through: :company_business_contents
  has_many :company_work_contents
  has_many :work_contents, through: :company_work_contents

  validates :name, presence: true
  validates :address, presence: true
  validates :image, presence: true
end
