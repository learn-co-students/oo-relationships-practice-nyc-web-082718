class Character
  @@all = []
  attr_accessor :name, :actor, :entertainment_objects

  def initialize(name, actor)
    @name = name
    @actor = actor
    @entertainment_objects = []

    ###########

    @@all << self

    actor.character_objects << self
  end

  def self.all
    # @@all
    @@all.map { |x| "Character object #{x.name}" }
  end

  def entertainments
    names(@entertainment_objects)
  end

  ############################################

  def self.most_appearances
    @@all.sort_by { |s| s.entertainment_objects.length }.reverse[0].name
  end

end
