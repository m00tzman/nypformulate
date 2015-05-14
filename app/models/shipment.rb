class Shipment < ActiveRecord::Base
	has_many :skids, dependent: :destroy
	has_many :forms
	accepts_nested_attributes_for :skids, allow_destroy: true
end
