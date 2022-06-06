class CartItem < ApplicationRecord
  belongs_to :token
  belongs_to :cart
end
