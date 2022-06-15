class AddOriginalPriceToTickets < ActiveRecord::Migration[6.1]
  def change
    add_monetize :tickets, :original_price, currency: { present: false }
  end
end
