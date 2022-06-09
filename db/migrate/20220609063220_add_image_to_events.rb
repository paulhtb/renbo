class AddImageToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :image_url, :string
  end
end
