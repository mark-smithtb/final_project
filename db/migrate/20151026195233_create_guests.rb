class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.string :phone_number
      t.integer :reservation_number
    end
  end
end
