require_relative 'mammal'
class Dog < Mammal
 	def health
 		@health
 	end
 	def pet(p)
 		@health+=5 
    	self
  	end 
 	def walk(n)

 		@health-=n 
    	self
  	end 
  	def run(r)
 		@health-=10
  		self
 	end	
end
rufus = Dog.new
rufus.walk(3).run(2).pet(1).display_health