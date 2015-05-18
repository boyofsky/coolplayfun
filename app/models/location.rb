class Location < ActiveRecord::Base
     #validates_presence_of :address, :message => "can't be empty"
     #validates_length_of :address
     #validates :address, presence: true
     validates :name, :presence => { :message => "不能空白" }
     validates :address, :presence => { :message => "不能空白" }
     has_many :events
end
