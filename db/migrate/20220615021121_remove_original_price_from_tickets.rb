class RemoveOriginalPriceFromTickets < ActiveRecord::Migration[6.1]
  def change
    remove_column :tickets, :original_price, :float
  end
end
