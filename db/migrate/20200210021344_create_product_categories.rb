class CreateProductCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :product_categories do |t|
      t.bigint :product,   foreign_key: true, null: false
      t.bigint :category,  foreign_key: true, null: false
      t.timestamps
    end
  end
end
