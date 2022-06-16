class AddVipColumnToTickets < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :VIP, :boolean
  end
end
