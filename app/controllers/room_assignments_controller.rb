class RoomAssignmentsController < ApplicationController
  layout "management"

  def index
    @unassigned = RoomAssignment.all.order("guest_id Desc").where("room_id is null")
    @assigned   = RoomAssignment.all.where('room_id is not null')
  end

  def new
    @room_assignment = RoomAssignment.new
  end

  def update
    @room_assignment = RoomAssignment.find(params[:id])
    @room = Room.find(params[:room_assignment][:room_id])
    @room_assignment.update(room_id: params[:room_assignment][:room_id])
    byebug
    @room.update(available: false)


    redirect_to room_assignments_url
  end

end
