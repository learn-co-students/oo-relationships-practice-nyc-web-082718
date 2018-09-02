class Passenger
  @@all = []
  attr_accessor :name, :driver_objects, :ride_objects

  def initialize(name)
    @name = name
    @driver_objects = []
    @ride_objects = []

    @@all << self
  end

  def self.all
    # @@all
    @@all.map { |p| "Passenger object #{p.name}" }
  end

  def drivers
    @driver_objects.map { |d| d.name }
  end

  def rides
    @ride_objects.map { |r| "Ride object: #{r.driver.name} drove #{r.passenger.name} for #{r.distance} miles" }
  end

  ############################################

  def total_distance
    @ride_objects.map { |r| r.distance }.inject(:+)
  end

  def self.premium_members
    @@all.select { |p| p.total_distance > 100 }.map { |p| p.name }
  end

end
