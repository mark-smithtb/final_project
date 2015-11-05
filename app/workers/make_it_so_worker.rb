class MakeItSoWorker
  include Sidekiq::Worker

  def perform(temp_request_id)
    @temp_request = TempRequest.find(temp_request_id)
    nest = NestThermostat::Nest.new(email: ENV['NEST_EMAIL'], password: ENV['NEST_PASS'])
    nest.temperature = @temp_request.temperature
  end
end
