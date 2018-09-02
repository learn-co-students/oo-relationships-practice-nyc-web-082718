class Guest
  @@all = []
  attr_accessor :name, :listings, :trips, :trip_count

  def initialize(name)
    @name = name
    @listings = []
    @trips = []
    @trip_count = 0

    @@all << self
  end

  def self.all
    # @@all
    @@all.map { |g| g.name }
  end

  ############################################

  def self.find_all_by_name(name)
    # @@all.select { |g| g.name == name }
    @@all.select { |g| g.name == name }.map { |g| g.name }
  end

  def self.pro_traveller
    # @@all.select { |g| guest.trip_count > 1 }
    @@all.select { |g| g.trip_count > 1 }.map { |g| g.name }
  end

end
