class Driver
  @@all = []
  attr_accessor :name, :passenger_objects, :ride_objects

  def initialize(name)
    @name = name
    @passenger_objects = []
    @ride_objects = []

    @@all << self
  end

  def self.all
    # @@all
    @@all.map { |d| "Driver object #{d.name}" }
  end

  def passengers
    @passenger_objects.map { |p| p.name }
  end

  def rides
    @ride_objects.map { |r| "Ride object: #{r.driver.name} drove #{r.passenger.name} for #{r.distance} miles" }
  end

  ############################################

  def mileage
    @ride_objects.map { |r| r.distance }.inject(:+)
  end

  def self.mileage_cap(distance)
    @@all.select { |d| d.mileage > distance }.map { |d| d.name }
  end

end
