module WeatherWeasel

  class CurrentHurricane
    attr_accessor :data
    def initialize(client)
      @data = client.parse_url("/currenthurricane/view.json") 
    end

    def sandbag_monkey
      if @data["currenthurricane"].empty?
        puts "No Sandbags needed at this moment! Carry on."
      else 
        puts "Get your sandbags! #{@data["currenthurricane"]["stormName"]} is coming!!"
      end
    end
  end
end



