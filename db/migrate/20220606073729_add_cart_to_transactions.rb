class AddCartToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_reference :transactions, :cart, null: false, foreign_key: true
  end
end
