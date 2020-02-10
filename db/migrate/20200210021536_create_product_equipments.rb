class CreateProductEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :product_equipments do |t|
      t.bigint :product,    foreign_key: true, null: false
      t.bigint :equipment,  foreign_key: true, null: false
      t.timestamps
    end
  end
end
