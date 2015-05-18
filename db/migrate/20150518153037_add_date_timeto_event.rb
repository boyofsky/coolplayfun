class AddDateTimetoEvent < ActiveRecord::Migration
  def change
    add_column :events, :event_date, :datetime
    add_column :events, :location_id, :integer
  end
end
