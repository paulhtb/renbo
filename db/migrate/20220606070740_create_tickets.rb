class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :description
      t.integer :tier
      t.float :original_price
      t.integer :no_available

      t.timestamps
    end
  end
end
