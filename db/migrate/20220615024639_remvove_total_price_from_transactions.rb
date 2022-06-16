class RemvoveTotalPriceFromTransactions < ActiveRecord::Migration[6.1]
  def change
    remove_column :transactions, :total_price, :float
  end
end
