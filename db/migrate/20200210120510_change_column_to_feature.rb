class ChangeColumnToFeature < ActiveRecord::Migration[5.2]
  def change
    change_column :features, :name, :string, null: false, unique: true
  end
end
