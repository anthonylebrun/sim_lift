module SmartLift
  class SendEvent
    attr_reader :time, :origin, :destination

    def initialize(args)
      @time = args[:time].to_i
      @destination = args[:destination].to_i
    end

  end
end