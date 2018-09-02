class Movie
  @@all = []
  attr_accessor :name, :character_objects, :actor_objects

  def initialize(name)
    @name = name
    @character_objects = []
    @actor_objects = []
    ###########

    @@all << self
  end

  def self.all
    # @@all
    # @@all.map { |x| "Movie object #{x.name}" }
    names(@@all)
  end

  def characters
    names(@character_objects)
  end

  def actors
    names(@actor_objects)
  end

  ############################################

  def self.most_actors
    @@all.sort_by { |m| m.actor_objects.length }.reverse[0].name
  end

end
