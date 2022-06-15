class RemovePriceFromTokens < ActiveRecord::Migration[6.1]
  def change
    remove_column :tokens, :price, :float
  end
end
