class CreateTestControllers < ActiveRecord::Migration
  def change
    create_table :test_controllers do |t|

      t.timestamps null: false
    end
  end
end
