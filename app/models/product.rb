class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :line_items, dependent: :destroy
  monetize :price_cents

  validates :title, presence: true
  validates :description, presence: true
  validates :stock, presence: true
  has_many_attached :photos
end
