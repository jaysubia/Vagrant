class Mammal
  attr_accessor :health
  def initialize
    @health = 170
    puts 'I am initialized and have full health'
    self
  end
  def display_health
   puts @health
    self
  end
end