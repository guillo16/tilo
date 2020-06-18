class Division < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_many :categories

  validates :title, presence: true
end
