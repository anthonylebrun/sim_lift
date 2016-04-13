module SimLift
  class Dispatcher
    attr_accessor :lifts

    def initialize(lift_class, building)
      @lift_class = lift_class
      @building = building
      @lifts = []

      initialize_elevators
    end

    def run(timestamp, events)
      puts "#{timestamp} running with #{events.size} events"
    end

    private

    attr_reader :lift_class, :building

    def initialize_elevators
      self.lifts = building.shafts.times.map { lift_class.new }
    end

  end
end