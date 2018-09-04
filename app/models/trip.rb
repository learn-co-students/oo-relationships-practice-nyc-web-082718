class Trip

  attr_accessor :name, :listing, :guest

  @@all = []

  def initialize(name, listing, guest)
    @name = name
    @listing = listing
    @guest = guest
    @@all << self
  end

  def self.all
    @@all
  end

end


#### Trip
# - #listing
#   - returns the listing object for the trip
# - #guest
#   - returns the guest object for the trip
# - .all
#   - returns an array of all trips
