class Listing
  @@all = []
  attr_accessor :city, :guests, :trips, :trip_count

  def initialize(city)
    @city = city
    @guests = []
    @trips = []
    @trip_count = 0

    @@all << self
  end

  def self.all
    # @@all
    @@all.map { |l| l.city }
  end

  ############################################

  def self.find_all_by_city(city)
    # @@all.select { |l| l.city == city }
    @@all.select { |l| l.city == city }.map { |l| l.city }
  end

  def self.most_popular
    # @@all.sort_by { |l| l.trip_count }.reverse[0]
    @@all.sort_by { |l| l.trip_count }.reverse[0].city
  end

end
