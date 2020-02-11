class ChangeColumnToProductCategories < ActiveRecord::Migration[5.2]
  def change
    rename_column :product_categories, :product, :product_id
    rename_column :product_categories, :category, :category_id
  end
end
