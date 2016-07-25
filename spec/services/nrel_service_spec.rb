require 'rails_helper'

describe NrelService do
  it "returns a list of solar resource data" do
    VCR.use_cassette("solar resource") do
      solar_data = NrelService.new.get_solar_data
      data = solar_data.first

      expect(data[:version]).to eq("1.0.0")
    end
  end
end
