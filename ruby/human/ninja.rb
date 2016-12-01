require_relative 'human1'
class Ninja
		def initialize
		@stealth = 175
	end
	def steal(destroy)
		attack(destroy)
		@health += 10
		self
	end
	def get_away
		@health -= 15
	end
end