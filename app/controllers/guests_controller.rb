class GuestsController < ApplicationController

  def show
    @guest = Guest.find(params[:id])
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.create(guest_params)
    @room_assignment = RoomAssignment.create(guest_id: @guest.id)
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :phone_number, :reservation_number)
  end
end
