class AddColumnToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :user_id, :integer
    add_column :trips, :no_of_days, :integer
    add_column :trips, :starting_day, :date
    add_column :trips, :ending_day, :date
    add_column :trips, :no_of_pax, :integer
    add_column :trips, :budget, :integer
    add_column :trips, :starting_place, :string
    add_column :trips, :ending_place, :string
  end
end
