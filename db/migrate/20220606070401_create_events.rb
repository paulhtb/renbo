class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :category
      t.string :music_genre
      t.string :country
      t.string :city
      t.string :address
      t.datetime :start_time
      t.datetime :end_time
      t.string :description
      t.string :event_url

      t.timestamps
    end
  end
end
