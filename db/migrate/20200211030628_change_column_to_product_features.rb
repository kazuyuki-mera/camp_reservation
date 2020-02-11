class ChangeColumnToProductFeatures < ActiveRecord::Migration[5.2]
  def change
    rename_column :product_features, :product, :product_id
    rename_column :product_features, :feature, :feature_id
  end
end
