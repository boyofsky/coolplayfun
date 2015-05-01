class AddNameToTestControllers < ActiveRecord::Migration
  def change
    add_column :test_controllers, :name, :string
  end
end
