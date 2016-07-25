require 'rails_helper'

describe NrelService do
  it "returns a list of solar resource data" do
    VCR.use_cassette("fuel_stations") do
      all_fuel_stations = NrelService.new.get_fuel_data
      fuel_station = all_fuel_stations.first
    end
  end
end
