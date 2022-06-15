class AddAmountToCarts < ActiveRecord::Migration[6.1]
  def change
    add_monetize :carts, :amount, currency: { present: false }
  end
end
