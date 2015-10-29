class RoomAssignment < ActiveRecord::Base
  belongs_to :guest
  belongs_to :room
  has_many :temp_requests
end
