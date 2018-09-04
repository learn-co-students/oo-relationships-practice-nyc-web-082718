class Listing

  attr_accessor :city_name

  @@all = []

  def initialize(city_name)
    @city_name = city_name
    @@all << self
  end

  def self.all
    @@all
  end

  def guests
    listings = Trip.all.select do |trip|
      trip.listing == self
    end
    listings.map do |trip|
      trip.guest
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def trip_count
    self.trips.length
  end

  def self.find_all_by_city(city_name)
    @@all.find_all do |listing|
      listing.city_name == city_name
    end
  end

  def self.most_popular
    @@all.max_by do |listing|
    listng.trip_count
  end

end

# #### Listing
# - #guests
#   - returns an array of all guests who have stayed at a listing
# - #trips
#   - returns an array of all trips at a listing
# - #trip_count
#   - returns the number of trips that have been taken to that listing
# - .all
#   - returns an array of all listings
# - .find_all_by_city(city)
#   - takes an argument of a city name (as a string) and returns all the listings for that city
# - .most_popular
#   - finds the listing that has had the most trips
