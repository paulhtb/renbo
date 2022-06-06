class Transaction < ApplicationRecord
  belongs_to :cart

  validates :status, presence: true
  validates :total_price, presence: true
end
