class Dessert
  @@all = []
  attr_accessor :name, :bakery, :ingredient_objects

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @ingredient_objects = []

    @@all << self

      bakery.dessert_objects << self
      # bakery.dessert_objects << self.name
  end

  def self.all
    # @@all
    @@all.map { |d| "Dessert object #{d.name}" }
  end

  ############################################

  def calories
    @ingredient_objects.map { |i| i.calories }.inject(:+)
  end

  def ingredients
    @ingredient_objects.map { |i| i.name }
  end

end
