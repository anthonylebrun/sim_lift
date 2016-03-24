require_relative '../lib/building'
require_relative '../lib/lift'
require_relative '../lib/dispatcher'
require_relative '../lib/event_store'
require_relative '../lib/simulation'

include SmartLift

EVENTS_FILE = File.join(File.dirname(__FILE__), '../data/events.csv')

building = Building.new(
  shafts: 4,
  bottom: -5,
  top: 20
)

dispatcher = Dispatcher.new(Lift, building)
events = EventStore.new(EVENTS_FILE)

lift_simulation = Simulation.new(dispatcher, events)
lift_simulation.play
