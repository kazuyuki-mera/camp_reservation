class ChangeColumnToEquipment < ActiveRecord::Migration[5.2]
  def change
    change_column :equipment, :name, :string, null: false, unique: true
  end
end
