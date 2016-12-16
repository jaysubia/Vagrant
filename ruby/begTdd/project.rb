class Project
  attr_accessor :name, :description, :new_team_member
  def initialize name, description, new_team_member
    @name = name
    @description = description
    @new_team_member = new_team_member
  end
  def elevator_pitch
    "#{@name}, #{@description}"
  end
  def add_to_team
  	"#{@new_team_member}"
  end
end