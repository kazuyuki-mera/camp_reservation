class CreateProductFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :product_facilities do |t|
      t.bigint :product_id,  foreign_key: true, null: false
      t.bigint :facility_id,  foreign_key: true, null: false
      t.timestamps
    end
  end
end
