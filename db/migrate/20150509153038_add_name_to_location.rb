class AddNameToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :name, :string
    add_column :locations, :gps, :string
  end
end
