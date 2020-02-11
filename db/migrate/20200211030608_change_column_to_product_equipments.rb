class ChangeColumnToProductEquipments < ActiveRecord::Migration[5.2]
  def change
    rename_column :product_equipments, :product, :product_id
    rename_column :product_equipments, :equipment, :equipment_id
  end
end
