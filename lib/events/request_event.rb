module SmartLift
  class RequestEvent
    attr_reader :time, :origin

    def initialize(args)
      @time = args[:time].to_i
      @origin = args[:origin].to_i
    end

  end
end