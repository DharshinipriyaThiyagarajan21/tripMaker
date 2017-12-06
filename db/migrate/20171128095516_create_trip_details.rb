class CreateTripDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :trip_details do |t|

      t.timestamps
    end
  end
end
