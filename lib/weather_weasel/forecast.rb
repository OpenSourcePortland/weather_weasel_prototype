module WeatherWeasel
  class Forecast
    attr_accessor :data
     
    def initialize(location)
      @data = location.client.parse_url("/forecast/q/#{location.state}/#{location.city_name}/.json")
      @temperature_format = location.temperature_format
    end

    def high
      all_highs.max
    end

    def low
      all_lows.min
    end

    def all_highs
      days = @data["forecast"]["simpleforecast"]["forecastday"]
      highs = []
      days.each do |day|
        highs << day["high"][@temperature_format]
      end
      highs
    end

    def all_lows
      days = @data["forecast"]["simpleforecast"]["forecastday"]
      lows = []
      days.each do |day|
        lows << day["low"][@temperature_format]
      end
      lows
    end

    def start_date
        day = @data["forecast"]["simpleforecast"]["forecastday"][0]["date"]["pretty"]
    end
  end
end

