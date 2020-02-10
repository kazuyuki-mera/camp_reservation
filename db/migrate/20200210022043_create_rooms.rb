class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string  :name,          null: false
      t.integer :workday_price, null: false
      t.integer :holiday_price, null: false
      t.integer :total_rooms,   null: false
      t.integer :least_count,   null: false
      t.integer :max_count,     null: false
      t.timestamps
    end
  end
end
