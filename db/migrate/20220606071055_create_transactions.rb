class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :status
      t.float :total_price

      t.timestamps
    end
  end
end
