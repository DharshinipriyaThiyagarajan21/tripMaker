class AddColumnToPois < ActiveRecord::Migration[5.1]
  def change
    add_column :pois, :name, :string
    add_column :pois, :description, :text
    add_column :pois, :open_time, :time
    add_column :pois, :close_time, :time
    add_column :pois, :area, :string
    add_column :pois, :destination_id, :integer
  end
end
