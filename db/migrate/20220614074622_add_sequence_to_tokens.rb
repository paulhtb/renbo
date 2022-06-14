class AddSequenceToTokens < ActiveRecord::Migration[6.1]
  def change
    add_column :tokens, :sequence_num, :integer
  end
end
