class Order < ApplicationRecord
  belongs_to :user
  belongs_to :cart
  paginates_per 10

  monetize :amount_cents
end
