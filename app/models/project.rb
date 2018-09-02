class Project

  @@all = []
  attr_accessor :name, :goal, :user_objects, :creator

  def initialize(name, goal, creator)
    @name = name
    @goal = goal
    @creator = creator
    @user_objects = []

    @@all << self

    creator.created_project_objects << self
  end

  def self.all
    # @@all
    @@all.map { |x| "Project object #{x.name}" }
  end

  def users
    names(user_objects)
  end

  ############################################

  def self.no_pledges
    names(@@all.select { |pr| pr.user_objects == [] })
  end

  def total
    total = Pledge.all.select { |pl| pl.project == self }.map { |pl| pl.amount }.inject(:+)
    total ||= 0
  end

  def self.above_goal
    names(@@all.select { |pr| pr.total >= pr.goal })
  end

  def self.most_backers
    @@all.sort_by { |pr| pr.user_objects.length }.reverse[0].name
  end

end
