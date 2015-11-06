class TempRequestsController < ApplicationController

def index
end

def new
  @temp_request = TempRequest.new
end

def create
@room_assignment = RoomAssignment.find(params[:room_assignment_id])
@temp_request = @room_assignment.temp_requests.create(temp_request_params)
MakeItSoWorker.perform_async(@temp_request.id)
end

private

def temp_request_params
  params.require(:temp_request).permit(:temperature)
end


end
