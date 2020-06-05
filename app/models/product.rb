class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :title, presence: true
  validates :description, precense: true
  validates :stock, precense: true
end
