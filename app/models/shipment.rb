class Shipment < ActiveRecord::Base
	has_many :skids
	has_many :forms
	accepts_nested_attributes_for :skids, :reject_if => :all_blank, :allow_destroy => true
end
