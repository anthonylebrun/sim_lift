require_relative './events/index'

module SimLift
  class EventFactory
    class << self

      EVENT_MAP = {
        'request' => RequestEvent,
        'send' => SendEvent
      }.freeze

      def build(args)
        type = args.delete(:type)
        EVENT_MAP[type].new(args)
      end

    end
  end
end