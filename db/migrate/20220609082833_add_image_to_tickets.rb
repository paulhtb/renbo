class AddImageToTickets < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :image_url, :string
  end
end
