class Planet
	attr_accessor :name, :description, :population

	def initialize
		@name = "Planet"
		@description = "Planet Description"
		@population = 1000
	end
end

class Solar_System
	attr_accessor :name, :planets, :number_of_planets

	def initialize name = "Andromeda"
		@name = name
		@planets = [ "Sun", "Mars", "Mercury" ]
		@number_of_planets = 3
	end

	def number_of_planets
		"#{@number_of_planets}"
	end

	def add_planet planet
		@planets.push( planet.name )
		@number_of_planets += 1
	end

	def super_nova
		@planets = []
		@number_of_planets = 0
	end
end