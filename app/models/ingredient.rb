class Ingredient
  @@all = []
  attr_accessor :name, :dessert, :calories, :bakery

  def initialize(name, dessert, calories)
    @name = name
    @dessert = dessert
    @calories = calories
    @bakery = dessert.bakery

    @@all << self

    dessert.ingredient_objects << self
    dessert.bakery.ingredient_objects << self
    # dessert.ingredient_objects << self.name
    # dessert.bakery.ingredient_objects << self.name
  end

  def self.all
    # @@all
    @@all.map { |i| "Ingredient object #{i.name}" }
  end

  ############################################

  def self.find_all_by_name(ingredient)
    @@all.select { |i| i.name.include? ingredient }.map { |i| i.name }
  end

end
