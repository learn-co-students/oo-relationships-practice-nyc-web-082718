class Trip
  @@all = []
  attr_accessor :listing, :guest

  def initialize(listing, guest)
    @listing = listing
    @guest = guest

    @@all << self

    # listing.guests << guest
    listing.guests << guest.name
    listing.trips << self
    listing.trip_count += 1

    # guest.listings << listing
    guest.listings << listing.city
    guest.trips << self
    guest.trip_count += 1
  end

  def self.all
    # @@all
    @@all.map { |t| "#{t.guest.name} goes to #{t.listing.city}" }
  end
end
