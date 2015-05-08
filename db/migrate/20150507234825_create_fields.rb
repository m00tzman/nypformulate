class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :date
      t.string :seal
      t.string :truck
      t.string :company
      t.string :truckernumber
      t.string :units
      t.string :weight
      t.string :deliverydate

      t.timestamps null: false
    end
  end
end
