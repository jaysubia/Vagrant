class Apple_Tree
	attr_accessor :height, :age, :apples

	def initialize
		@age = 0
		@height = 4
		@apples = 0
	end

	def year_gone_by
		@age += 1
		@height += 3
		if @age > 3
			@apples += 25
		end
		if @age > 10
			@apples -= 25
		end
		self
	end

	def pick_apples
		@apples = 0
	end
end





#  Apple Tree should have a count of how many apples is on it
#  Apple Tree should have a method called year_gone_by, which ages the tree by 1 year affecting its height
#  Apple Tree should not grow apples for the first three years of its life
#  Apple Tree should have a method called pick_apples that takes all of the apples off the tree
#  Apple Tree should decay and not grow apples after 10 years