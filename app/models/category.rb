class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :division
  has_many :products, dependent: :destroy

  validates :title, presence: true
end
