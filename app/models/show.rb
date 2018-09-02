class Show
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
    # @@all.map { |x| "Show object #{x.name}" }
    names(@@all)
  end

  def characters
    names(@character_objects)
  end

  def actors
    names(@actor_objects)
  end

  ############################################

  def self.on_the_big_screen
    shows = Show.all.select do |s|
      same_name_flag = false
      Movie.all.each do |m|
        # if s.name == m.name
        if s == m
          same_name_flag = true
        end
      end
      same_name_flag
    end
    # names(shows)
  end

end
