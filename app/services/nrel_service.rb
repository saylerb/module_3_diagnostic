class NrelService
  def initialize 
    @_conn = Faraday.new(url: "https://developer.nrel.gov") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_fuel_data
    response = conn.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['NREL_API_KEY']}&location=80203&radius=6&fuel_type=ELEC, LPG")
    JSON.parse(response.body, symbolize_names: :true)
  end

  private

  def conn
    @_conn
  end
end
