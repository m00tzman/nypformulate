class Shipment < ActiveRecord::Base
	has_many :skids
	has_many :forms
end
