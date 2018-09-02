class User

  @@all = []
  attr_accessor :name, :project_objects, :created_project_objects

  def initialize(name)
    @name = name
    @project_objects = []
    @created_project_objects = []

    @@all << self
  end

  def self.all
    # @@all
    @@all.map { |x| "User object #{x.name}" }
  end

  def projects
    names(project_objects)
  end

  ############################################

  def self.highest_pledge
    Pledge.all.sort_by { |pl| pl.amount }.reverse[0].user.name
  end

  def self.multi_pledger
    names(@@all.select { |u| u.project_objects.length > 1 })
  end

  def self.project_creator
    names(@@all.select { |u| u.created_project_objects != [] })
  end

  def find_supporters
    if @created_project_objects != []
      names(@created_project_objects.map { |pr| pr.user_objects }.inject(:+))
    else
      []
    end
  end

end
