class CreateFormFields < ActiveRecord::Migration
  def change
    create_table :form_fields do |t|
      t.integer :forms_id
      t.integer :fields_id

      t.timestamps null: false
    end
  end
end
