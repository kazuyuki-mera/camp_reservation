class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text    :description,  null: false
      t.bigint :room_id,      foreign_key: true, null: false
      t.timestamps
    end
  end
end
