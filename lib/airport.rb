class Airport
  attr_accessor :plane_in_airport

  # def plane_in_airport=(plane)
  #   @plane_in_airport = plane
  # end
  #
  # def plane_in_airport
  #   @plane_in_airport
  # end

  def initialize
    @plane_in_airport = 0
  end

  def land(plane)
    @plane_in_airport = plane
  end

  def take_off
    raise "Stormy weather. Plane is grounded." if is_stormy
    @plane_in_airport = 0
  end


  def is_stormy
    [true, false].sample
##### need to change this
  end


end
