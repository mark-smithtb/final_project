class TempRequestsController < ApplicationController

def index
end

def new
  @temp_request = TempRequest.new
end

def create
@room_assignment = RoomAssignment.find(params[:room_assignment_id])
@temp_request = @room_assignment.temp_requests.new(temp_request_params)
nest = NestThermostat::Nest.new(email: ENV['NEST_EMAIL'], password: ENV['NEST_PASS'])
nest.temperature = @temp_request.temperature
redirect_to :back
end

private

def temp_request_params
  params.require(:temp_request).permit(:temperature)
end


end
