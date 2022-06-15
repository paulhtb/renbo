class AddAmountToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_monetize :transactions, :amount, currency: { present: false }
  end
end
