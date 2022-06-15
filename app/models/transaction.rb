class Transaction < ApplicationRecord
  belongs_to :cart
  has_one :user, through: :cart

  monetize :amount_cents

  validates :status, presence: true
end
