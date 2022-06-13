class AddStatusToCart < ActiveRecord::Migration[6.1]
  def change
    add_column :carts, :status, :string
  end
end
