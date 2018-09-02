class Trainer
  @@all = []
  attr_accessor :name, :location_objects, :client_objects

  def initialize(name)
    @name = name
    @location_objects = []
    @client_objects = []

    @@all << self
  end

  def self.all
    # @@all
    @@all.map { |x| "Trainer object #{x.name}" }
  end

  def locations
    names(location_objects)
  end

  def clients
    names(client_objects)
  end

  ############################################

  def self.most_clients
    @@all.sort_by { |t| t.client_objects.length }.reverse[0].name
  end

end
