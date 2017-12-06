class AddImagesToDestinations < ActiveRecord::Migration[5.1]
  def change
    add_column :destinations, :images, :string
    add_column :destinations, :descriptions, :text
  end
end
