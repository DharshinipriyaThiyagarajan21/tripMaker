class AddColumnToDestinations < ActiveRecord::Migration[5.1]
  def change
    add_column :destinations, :name, :string
    add_column :destinations, :country, :string
  end
end
