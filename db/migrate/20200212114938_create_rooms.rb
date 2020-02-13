class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string   :name, null: false
      t.integer  :phone
      t.text     :meal
      t.integer  :lodging_id, null: false, default: 1
      t.integer  :people, null: false
      t.timestamps
    end
  end
end
