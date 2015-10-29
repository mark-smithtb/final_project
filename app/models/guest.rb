class Guest < ActiveRecord::Base
  has_many :room_assignments
  has_many :rooms, through: :room_assignments
  has_many :temp_requests, through: :room_assignments
end
