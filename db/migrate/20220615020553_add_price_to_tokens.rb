class AddPriceToTokens < ActiveRecord::Migration[6.1]
  def change
    add_monetize :tokens, :price, currency: { present: false }
  end
end
