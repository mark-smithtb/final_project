class RoomAssignment < ApplicationController

  def index
    @unassigned = RoomAssignment.all.where("room_id is null")
    @assigned   = RoomAssignment.all.where('room_id is not null')
  end

  def new
    @room_assignment = RoomAssignment.new
  end



end
