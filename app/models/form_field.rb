class FormField < ActiveRecord::Base
	belongs_to :field
	belongs_to :form
end
