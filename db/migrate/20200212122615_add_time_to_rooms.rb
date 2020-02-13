class AddTimeToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :time, :string
  end
end
