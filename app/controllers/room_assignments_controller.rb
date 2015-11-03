class RoomAssignmentsController < ApplicationController
  layout "management"

  def index
    @unassigned = RoomAssignment.all.where("room_id is null")
    @assigned   = RoomAssignment.all.where('room_id is not null')
  end

  def new
    @room_assignment = RoomAssignment.new
  end

  def update
    @room_assignment = RoomAssignment.find(params[:id])
    byebug
    @room_assignment.update(room_id: params[:room_assignment][:room_id])
    redirect_to room_assignments_url
  end

end
