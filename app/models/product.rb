class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :stock, presence: true
  has_many_attached :photos
end
