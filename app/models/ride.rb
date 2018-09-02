class Ride
  @@all = []
  attr_accessor :distance, :driver, :passenger

  def initialize(distance, driver, passenger)
    @distance = distance
    @driver = driver
    @passenger = passenger

    @@all << self

    driver.passenger_objects << passenger
    driver.ride_objects << self

    passenger.driver_objects << driver
    passenger.ride_objects << self
  end

  def self.all
    # @@all
    @@all.map { |r| "Ride object: #{r.driver.name} drove #{r.passenger.name} for #{r.distance} miles" }
  end

  ############################################

  def self.average_distance
    @@all.map { |r| r.distance }.inject(:+).to_f / @@all.count
  end

end
