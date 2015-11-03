class GuestsController < ApplicationController

  def show
    @guest = Guest.find(params[:id])
    @room_assignment = @guest.room_assignments.first
    nest = NestThermostat::Nest.new(email: ENV['NEST_EMAIL'], password: ENV['NEST_PASS'])
    @current_temp = nest.current_temp.to_i
    @target_temp = nest.temp.to_i

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
