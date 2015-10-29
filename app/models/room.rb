class Room < ActiveRecord::Base
  has_many :room_assignments
  has_many :guests, through: :room_assignments
end
