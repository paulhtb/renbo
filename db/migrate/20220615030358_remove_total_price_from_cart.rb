class RemoveTotalPriceFromCart < ActiveRecord::Migration[6.1]
  def change
    remove_column :carts, :total_price, :float
  end
end
