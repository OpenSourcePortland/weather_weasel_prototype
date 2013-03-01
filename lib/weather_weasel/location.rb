module WeatherWeasel
  class Location
    attr_accessor :client, :state, :city_name, :temperature_format
    def initialize(state, city_name, client, imperial_or_metric="imperial")
      @state = state
      @city_name = city_name
      @imperial_or_metric = imperial_or_metric
      set_imperial_or_metric
      @client = client 
    end

    def set_imperial_or_metric
      if @imperial_or_metric == "imperial"
        @temperature_format = "fahrenheit"
      elsif @imperial_or_metric == "metric"
        @temperature_format = "celsius"
      end
    end
  end
end

