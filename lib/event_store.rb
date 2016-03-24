require 'csv'
require_relative './settings'
require_relative './event_factory'

module SmartLift
  class EventStore

    def initialize(file, factory = EventFactory)
      @factory = factory

      parse_options = {
        headers: true,
        header_converters: :symbol
      }.freeze

      @events = CSV.read(file, parse_options).map do |row|
        to_event(row.to_hash)
      end
    end

    def at(timestamp)
      events.select do |event|
        event.time == timestamp
      end
    end

    def on_day(day)
      day_start = day * TICKS_PER_DAY
      day_end = (day + 1) * TICKS_PER_DAY

      events.select do |event|
        event.time >= day_start && event.time < day_end
      end
    end

    private

    attr_reader :factory, :events

    def to_event(row)
      factory.build(row)
    end

  end
end