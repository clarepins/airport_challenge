class Airport
  attr_accessor :plane_in_airport
  attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @plane_in_airport = 0
    @capacity = capacity
  end

  DEFAULT_CAPACITY = 1

  def land(plane)
    raise "Turn your plane around." if is_stormy || is_full
    @plane_in_airport += 1
  end

  def take_off
    raise "Stormy weather. Plane is grounded." if is_stormy
    @plane_in_airport = 0
  end

  def is_stormy
    [true, false].sample
##### need to change this
  end

  def is_full
    @plane_in_airport >= @capacity
  end

end
