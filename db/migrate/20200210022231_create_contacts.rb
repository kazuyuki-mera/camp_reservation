class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :full_name,    null: false
      t.string :email,        null: false
      t.string :phone_number, null: false
      t.string :title,        null: false
      t.text   :detail,       null: false
      t.timestamps
    end
  end
end
