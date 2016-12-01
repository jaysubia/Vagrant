class Project
  attr_accessor :project_name, :project_description
  def initialize(name,description)
		@project_name=name
		@project_description=description
	end
	def name
		puts "#{@project_name}"
	end
	def elevator_pitch
		puts "#{@project_name},#{@project_description}" 
		
	end
end
project1 = Project.new("Project 1", "Description 1")
puts project1.name #prints out Project 1
project1.elevator_pitch #prints out 'Project 1, Description 1"