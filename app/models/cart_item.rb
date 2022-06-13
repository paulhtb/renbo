class CartItem < ApplicationRecord
  belongs_to :token
  belongs_to :cart

  validates :token_id, uniqueness: { scope: :cart_id }
end
