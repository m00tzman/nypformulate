class Shipment < ActiveRecord::Base
	has_many :skids
	has_many :forms
	accepts_nested_attributes_for :skids
end
