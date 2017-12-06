class AddImagesToPois < ActiveRecord::Migration[5.1]
  def change
    add_column :pois, :images, :string
  end
end
