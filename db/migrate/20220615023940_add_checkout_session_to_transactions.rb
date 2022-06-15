class AddCheckoutSessionToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :checkout_session_id, :string
  end
end
