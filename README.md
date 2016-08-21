# SimLift

This is an early prototype of an elevator challenge that could be used to evaluate developer candidates. The simulations accepts a CSV of events and triggers an event per tick (this CSV needs to be populator with seasonal data). The general idea here is that candidates would be given the task of implementing the elevator dispatcher.

The nice thing about this kind of challenge is that it can be solved naively with a very simple approach (handling events one by one), or a more complex approach (using forecasting). The candidate could also choose to modify the existing simulation to accomodate for non-traditional elevators (for example, elevators that require users to specify the destination floor when requesting them).

