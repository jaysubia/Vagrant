require_relative 'human1'
class Wizard < Human
	def initialize
		super
		@health = 50
		@intelligence = 25
	end
	def heal
		@health += 10
	end
	def fireball(destroy)
		attack(destroy)
		destroy.health -=20
	end
end