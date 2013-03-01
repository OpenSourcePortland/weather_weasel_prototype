module WeatherWeasel
  class Almanac
    attr_accessor :data
    def initialize(location)
      @data = location.client.parse_url("/almanac/q/#{location.state}/#{location.city_name}/.json")
      @temperature_format = location.temperature_format
    end
  end
end