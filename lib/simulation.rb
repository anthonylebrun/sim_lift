require_relative './settings'

module SimLift
  class Simulation

    def initialize(dispatcher, events)
      @dispatcher = dispatcher
      @events = events
    end

    def play(days: 7) # Default to one week
      duration(days).times { |i| tick(i) }
    end

    def tick(timestamp)
      dispatcher.run(timestamp, events.at(timestamp))
    end

    private

    attr_reader :dispatcher, :events

    def duration(days)
      days * TICKS_PER_DAY
    end

  end
end