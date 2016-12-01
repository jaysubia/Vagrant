require_relative 'human1'
class Samurai < Human
@no_of_samurai = 0

	class << self
		attr_accessor :no_of_samurai
	end

	def initialize
 		@health=200
 		self.class.no_of_samurai += 1
		self
 	end
 	def meditate
 		@health=200
 	end
 	def death_blow(destroy)
 		attack(destroy)
 		destroy.health=0
 	end
 	def how_many
 		if self.class.no_of_samurai > 1
			puts "There are #{self.class.no_of_samurai} samurai"
		else self.class.no_of_samurai = 1
			puts "There is 1 samurai"
		end
 	end
end
Jay = Samurai.new
Josh = Samurai.new
June = Samurai.new
Lorenzo = Samurai.new
Lorenzo.how_many