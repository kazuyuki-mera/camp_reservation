class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.bigint :product_id, foreign_key: true, null: false
      t.bigint :user_id,    foreign_key: true, null: false
      t.date :check_in_date,      null: false
      t.date :check_out_date,     null: false
      t.date :check_in_plan_time, null: false
      t.text :message
      t.timestamps
    end
  end
end
