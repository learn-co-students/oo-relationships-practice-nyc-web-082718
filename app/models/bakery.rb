class Bakery
  @@all = []
  attr_accessor :name, :dessert_objects, :ingredient_objects

  def initialize(name)
    @name = name
    @dessert_objects = []
    @ingredient_objects = []

    @@all << self
  end

  def self.all
    # @@all
    @@all.map { |b| "Bakery object #{b.name}" }
  end

  ############################################

  def average_calories
    if @dessert_objects != []
      dessert_calories = @dessert_objects.map { |d| d.calories }
      dessert_calories.inject(:+).to_f / @dessert_objects.length
    else
      "No desserts here"
    end
  end

  def desserts
    @dessert_objects.map { |d| d.name }
  end

  def ingredients
    @ingredient_objects.map { |i| i.name }
  end

  def shopping_list
    ingredients.join(", ")
  end

end
