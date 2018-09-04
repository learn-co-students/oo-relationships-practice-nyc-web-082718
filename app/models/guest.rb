class Guest

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def listings(name)
    trips = Trip.all.select do |trip|
      trip.guest == self
    end
    trips.map do |trip|
      trip.listing
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.guest == self
    end
  end

  def trip_count
    self.trips.length
  end

  def self.pro_traveller
    trips = Trip.all.find_all do |trip|
      trip.guest.trip_count > 1
    end
    more_trips = trips.map do |trip|
      trip.guest.name
    end
    more_trips.uniq
  end

  def self.find_all_by_name(guest_name)
    @@all.find_all do |guest|
      guest.name == guest_name
    end
  end

end


# #### Guest
# - #listings
#   - returns an array of all listings a guest has stayed at
# - #trips
#   - returns an array of all trips a guest has made
# - #trip_count
#   - returns the number of trips a guest has taken
# # - .all
# #   - returns an array of all guests
# - .pro_traveller
#   - returns an array of all guests who have made over 1 trip
# - .find_all_by_name(name)
#   - takes an argument of a name (as a string), returns the all guests with that name
