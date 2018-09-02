class Job
  @@all = []
  attr_accessor :name, :location, :trainer

  def initialize(name, location, trainer)
    @name = name
    @location = location
    @trainer = trainer

    @@all << self

    location.trainer_objects << trainer

    trainer.location_objects << location
  end

  def self.all
    @@all
    # @@all.map { |x| "Job object #{x.name}" }
  end

end
