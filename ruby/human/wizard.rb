require_relative 'human1'
class Wizard
	def initialize
 		@health=50
 	end
 	def intelligence
 		@intelligence=25
 	end
 	def heal
 		@health+=10
 	end
 	def fireball(destroy)
 		attack(destroy)
 		destroy.health=-10
 		self
 	end

end