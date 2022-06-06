class AddUserAndTicketToTokens < ActiveRecord::Migration[6.1]
  def change
    add_reference :tokens, :user, null: false, foreign_key: true
    add_reference :tokens, :ticket, null: false, foreign_key: true
  end
end
