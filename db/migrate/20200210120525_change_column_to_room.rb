class ChangeColumnToRoom < ActiveRecord::Migration[5.2]
  def change
    change_column :rooms, :name, :string, null: false, unique: true
  end
end
