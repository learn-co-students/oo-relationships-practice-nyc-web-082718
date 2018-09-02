require 'pry'

class Client
  @@all = []
  attr_accessor :name, :trainer, :location_objects

  def initialize(name)
    @name = name
    @trainer = nil
    @location_objects = []

    @@all << self
  end

  def self.all
    # @@all
    @@all.map { |x| "Client object #{x.name}" }
  end

  def locations
    names(location_objects)
  end

  ############################################

  def assign_trainer(trainer)
    @trainer = trainer

    #Trainer's info
    trainer.client_objects << self

    trainer.location_objects.each do |l|
      #Location's info
      l.client_objects << self

      # binding.pry

      #Self/Client's info
      self.location_objects << l
    end
  end
end
