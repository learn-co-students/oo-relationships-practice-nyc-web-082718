class Role
  @@all = []
  attr_accessor :name, :entertainment, :character, :actor #############

  def initialize(name, entertainment, character)
    @name = name
    @entertainment = entertainment
    @character = character
    @actor = character.actor
    ###########

    @@all << self

    entertainment.character_objects << character
    entertainment.actor_objects << character.actor

    character.entertainment_objects << entertainment

    if entertainment.class == Movie
      @actor.movie_objects << entertainment
    elsif entertainment.class == Show
      @actor.show_objects << entertainment
    end
  end

  def self.all
    # @@all
    @@all.map { |x| "Character object #{x.name}" }
  end

  ############################################

  def self.most_appearances
    @@all.sort_by { |s| s.entertainment_objects.length }.reverse[0].name
  end

end
