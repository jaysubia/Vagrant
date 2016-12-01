# class ParentClass
#     def a_method
#       puts 'b'
#     end
#   end
#   class SomeClass < ParentClass 
#     def another_method
#       puts 'a'
#     end
#   end
#   instance = SomeClass.new
#   instance.another_method 
#   instance.a_method       

  class Mammal 
  def initialize
    puts 'I am alive!'
  end
  def breathe  
    puts 'Inhale and exhale' 
  end  
end
class Cat < Mammal
  def jerk
    puts 'scratching you...'
    self 
  end 
  def speak  
    puts "Meow"
    self   
  end
  def who_am_i
    puts self
    self 
  end
end  
chloe = Cat.new
chloe.speak.who_am_i.jerk
# class Cat < Mammal #inherits from the Mammal class 
#   def jerk
#     puts 'scratching you...'
#   end 
#   def speak  
#     puts "Meow"  
#   end  
# def who_am_i
#     puts self
#   end
# end  
# chloe = Cat.new
# chloe.who_am_i #prints the cat object
# chloe = Cat.new #creates new class called Cat, 'I am alive!' should print on the screen
# chloe.jerk # prints 'scratching you' on the screen
# chloe.speak # prints 'Meow'
# chloe.breathe # can access the Mammal methods as well, prints 'Inhale and exhale'