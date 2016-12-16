class Human
	attr_accessor :strength, :intelligence, :stealth, :health
 	def initialize
 		@strength = 3
 		@intelligence = 3
 		@stealth = 3
 		@health = 100
 	end
 	def attack(destroy)
    if destroy.class.ancestors.include?(Human)
      destroy.health -= 10
      true
    else
      false
    end
  end
end