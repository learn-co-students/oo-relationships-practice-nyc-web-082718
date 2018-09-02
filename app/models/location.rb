class Location
  @@all = []
  attr_accessor :name, :trainer_objects , :client_objects

  def initialize(name)
    @name = name
    @trainer_objects = []
    @client_objects = []

    @@all << self
  end

  def self.all
    # @@all
    @@all.map { |x| "Location object #{x.name}" }
  end

  def trainers
    names(trainer_objects)
  end

  def clients
    names(client_objects)

    # names(@trainer_objects.map { |t| t.client_objects }.inject(:+))
  end

  ############################################

  def self.least_clients
    @@all.sort_by { |l| l.client_objects.length }[0].name
  end

end
