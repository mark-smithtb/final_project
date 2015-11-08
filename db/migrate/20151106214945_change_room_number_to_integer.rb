class ChangeRoomNumberToInteger < ActiveRecord::Migration
  def change
    change_column :rooms, :room_number, 'integer USING CAST(room_number AS integer)'
  end
end
