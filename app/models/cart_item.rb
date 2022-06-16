class CartItem < ApplicationRecord
  belongs_to :token
  belongs_to :cart

  validates :token_id, uniqueness: { scope: :cart_id }

  after_create :update_cart_price
  after_destroy :update_cart_price

  def update_cart_price
    cart.amount = cart.total_price
    cart.save
  end
end
