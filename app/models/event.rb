class Event < ActiveRecord::Base
  belongs_to :location
  validates :title, :location_id, :event_date, presence: true
end
