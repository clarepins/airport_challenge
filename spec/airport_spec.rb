require "./lib/airport"
require "./lib/plane"

describe Airport do

  it { is_expected.to respond_to(:land).with(1).argument }

  it { is_expected.to respond_to(:take_off) }

  it { is_expected.to respond_to(:plane_in_airport) }

  it "has no planes when the plane takes off" do
    airport = Airport.new
    allow(airport).to receive(:is_stormy) { false }
    airport.take_off
    expect(airport.plane_in_airport).to eq(0)
  end

  it { is_expected.to respond_to(:is_stormy) }

  it "the weather is sometimes stormy" do
    airport = Airport.new
    allow(airport).to receive(:is_stormy) { true }
    expect(airport.is_stormy).to eq(true)
  end

  it "the weather is sometimes sunny" do
    airport = Airport.new
    allow(airport).to receive(:is_stormy) { false }
    expect(airport.is_stormy).to eq(false)
  end

  it "is stormy will either be true or false" do
    expect([true, false]).to include(Airport.new.is_stormy)
  end

  it "raises error when asked to take off in stormy weather" do
    airport = Airport.new
    allow(airport).to receive(:is_stormy) { true }
    expect{ airport.take_off }.to raise_error.with_message("Stormy weather. Plane is grounded.")
  end

  it "raises error when asked to land in stormy weather" do
    airport = Airport.new
    allow(airport).to receive(:is_stormy) { true }
    plane = Plane.new
    expect{ airport.land(plane) }.to raise_error.with_message("Turn your plane around.")
  end

  it "won't accept more planes than its capacity" do
    airport = Airport.new
    allow(airport).to receive(:is_stormy) { false }
    airport.land(Plane.new)
    expect{ airport.land(Plane.new) }.to raise_error.with_message("Turn your plane around.")
  end

end
