class CreateShipmentForm < ActiveRecord::Migration
  def change
    create_table :shipment_forms do |t|
      t.integer :shipment_id
      t.integer :form_id
    end
  end
end
