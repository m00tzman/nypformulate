class CreateJoinTableShipmentForm < ActiveRecord::Migration
  def change
    create_join_table :shipments, :forms do |t|
      t.index [:shipment_id, :form_id]
      t.index [:form_id, :shipment_id]
    end
  end
end
