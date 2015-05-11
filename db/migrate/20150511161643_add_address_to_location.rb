class AddAddressToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :address, :string
    add_column :locations, :official_web, :string
  end
end
