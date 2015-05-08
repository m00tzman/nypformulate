class Form < ActiveRecord::Base
	has_many :form_fields
	has_many :fields, through :form_fields
end
