class CreateTokens < ActiveRecord::Migration[6.1]
  def change
    create_table :tokens do |t|
      t.string :status
      t.string :NFT_id
      t.string :unlockable
      t.float :price
      t.boolean :unlocked

      t.timestamps
    end
  end
end
