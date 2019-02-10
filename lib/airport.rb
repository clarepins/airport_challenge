class Airport
  attr_accessor :planes_in_airport
  attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @planes_in_airport = []
    @capacity = capacity
  end

  DEFAULT_CAPACITY = 20

  def land(plane = Plane.new)
    raise "Turn your plane around." if is_stormy || is_full
    @planes_in_airport << plane
  end

  def take_off(plane)
    raise "Plane cannot take off." if is_stormy || is_empty
    @planes_in_airport.delete(plane)
  end

  def is_stormy
    [true, false, false, false, false].sample
  end

  def is_full
    @planes_in_airport.count >= @capacity
  end

  def is_empty
    @planes_in_airport.count == 0
  end

end
