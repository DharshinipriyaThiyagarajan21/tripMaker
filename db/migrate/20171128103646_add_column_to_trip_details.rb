class AddColumnToTripDetails < ActiveRecord::Migration[5.1]
  def change
    add_column :trip_details, :trip_id, :integer
    add_column :trip_details, :destination, :string
    add_column :trip_details, :pois, :string
    add_column :trip_details, :no_of_days, :integer
  end
end
