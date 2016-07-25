class Station < OpenStruct

  def self.service
    @@service ||= NrelService.new
  end

  def self.all
    all_stations_data = service.get_fuel_data

    all_stations_data[:fuel_stations].map do |station_data|
      Station.new(station_data)
    end
  end
end
