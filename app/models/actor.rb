class Actor
  @@all = []
  attr_accessor :name, :character_objects, :movie_objects, :show_objects

  def initialize(name)
    @name = name
    @character_objects = []
    @movie_objects = []
    @show_objects = []
    ###########

    @@all << self
  end

  def self.all
    # @@all
    @@all.map { |x| "Actor object #{x.name}" }
  end

  def characters
    names(@character_objects)
  end

  def movies
    names(@movie_objects)
  end

  def shows
    names(@show_objects)
  end

  ############################################

  def self.most_characters
    @@all.sort_by { |a| a.character_objects.length }.reverse[0].name
  end

end
