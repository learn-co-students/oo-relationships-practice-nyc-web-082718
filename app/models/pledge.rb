class Pledge

  @@all = []
  attr_accessor :user, :project, :amount

  def initialize(user, project, amount)
    @user = user
    @project = project
    @amount = amount

    @@all << self

    @project.user_objects << user

    @user.project_objects << project
  end

  def self.all
    @@all
  end

end
