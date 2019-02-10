This program allows multiple planes to land or take off at an airport.
There is default capacity of 20, and this can be overwritten when
a new Airport is created.
Planes cannot take off or land in stormy weather.

All tests pass green. I am unsure of the quality of the test for random
weather generator. They seem to pass even if I tamper with the code quite
a bit.

I have not used the 'double' method as suggested in the notes. I have used
the 'allow' method to set weather to sunny or stormy to do further tests
on planes landing and taking off. This did not seem to require the 'double'
method.

irb test to check that you cannot ask for 2 planes to take off from
an airport where only 1 is parked.
require "./lib/airport"
require "./lib/plane"
airport = Airport.new
plane = Plane.new
airport.land(plane)
airport.take_off(plane)
airport.take_off(Plane.new)

I am unsure of the test coverage.
