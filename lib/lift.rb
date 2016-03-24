module SmartLift
  class Lift
    attr_reader :location, :destination

    def initialize(args)
      @location = args.fetch(:floor, ground_floor)
      @destination = @location
    end

    def go_to(floor)
      self.destination = floor
    end

    def step
      puts "location: #{location.inspect}"
      puts "direction: #{direction.inspect}"
      self.location += direction
    end

    def arrived?
      location == destination
    end

    def direction
      return 0  if arrived?
      return -1 if location > destination
      return 1  if location < destination
    end

    private

    attr_reader :top, :bottom
    attr_writer :location, :destination

    def ground_floor
      0
    end

  end
end