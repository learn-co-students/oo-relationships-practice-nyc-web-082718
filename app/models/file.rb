class Template
  @@all = []
  attr_accessor :name #############

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all.map { |x| " ######### object #{x.name}" }
  end

  ############################################


end
