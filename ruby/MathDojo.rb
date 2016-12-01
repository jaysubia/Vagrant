class MathDojo
	attr_accessor :result
	def initialize
		@result=0
	end
	def result
		puts @result
	end
	def add(*math)
		if math.class == Array
			
			@result += math.flatten.inject(:+)

		else
			@result += hello
		end
		self
	end
	def subtract(*math)
		
		if math.class == Array
			
			@result -= math.flatten.inject(:+)

		else
			@result -= hello
		end
		self
		end
end

MathDojo.new.add(2).add(2, 5).subtract(3, 2).result
MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result