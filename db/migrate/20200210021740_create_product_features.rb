class CreateProductFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :product_features do |t|
      t.bigint :product,  foreign_key: true, null: false
      t.bigint :feature,  foreign_key: true, null: false
      t.timestamps
    end
  end
end
