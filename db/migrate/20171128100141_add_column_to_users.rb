class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :email, :string
    add_column :users, :area, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :mobile, :string
  end
end
