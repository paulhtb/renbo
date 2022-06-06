class Cart < ApplicationRecord
  belongs_to :user
  has_one :transaction
  has_many :cart_items
  has_many :tokens, through: :cart_items
  has_many :tickets, through: :tokens
end
