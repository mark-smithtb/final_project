class CreateRoomAssignments < ActiveRecord::Migration
  def change
    create_table :room_assignments do |t|
      t.integer :guest_id
      t.integer :room_id
    end
  end
end
