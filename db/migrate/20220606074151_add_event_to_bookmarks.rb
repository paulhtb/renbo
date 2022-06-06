class AddEventToBookmarks < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookmarks, :event, null: false, foreign_key: true
  end
end
