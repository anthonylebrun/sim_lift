module SmartLift
  class Dispatcher

    def initialize(lift_class, building)
      @lift_class = lift_class
      @building = building
    end

    def run(timestamp, events)
      puts "#{timestamp} running with #{events.size} events"
    end

  end
end