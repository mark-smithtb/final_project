class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :room_number
      t.string :nest_device
      t.string :number_of_beds
    end
  end
end
