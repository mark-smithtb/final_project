class CreateTempRequests < ActiveRecord::Migration
  def change
    create_table :temp_requests do |t|
      t.integer :room_assignment_id
      t.integer :temperature
    end
  end
end
