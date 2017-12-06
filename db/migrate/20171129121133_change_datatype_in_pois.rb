class ChangeDatatypeInPois < ActiveRecord::Migration[5.1]
  def change
  	change_column :pois, :open_time, :time
  	change_column :pois, :close_time, :time
  end
end
