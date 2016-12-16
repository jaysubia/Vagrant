require_relative 'solar'

RSpec.describe Planet do

	before do
		@planet = Planet.new
	end

	it "has a getter and setter for attribute name" do
		expect( @planet.name ).to eq( "Planet" )
		@planet.name = "Earth"
		expect( @planet.name ).to eq( "Earth" )
	end

	it "has a getter and setter for attribute description" do
		expect( @planet.description ).to eq( "Planet Description" )
		@planet.description = "The best planet"
		expect( @planet.description ).to eq( "The best planet")
	end

	it "has a getter and setter for attribute population" do
		expect( @planet.population ).to eq( 1000 )
		@planet.population = 13
		expect( @planet.population ).to eq( 13 )
	end
end

RSpec.describe Solar_System do

	before do
		@a = Solar_System.new
		@b = Solar_System.new( "Mars" )
	end

	it "has a getter and setter for attribute name default should be 'Andromeda'" do
		expect( @a.name ).to eq( "Andromeda" )
		expect( @b.name ).to eq( "Mars" )
	end

	it "has a list of planets" do
		expect( @a.planets ).to eq( [ "Sun", "Mars", "Mercury" ] )
	end

	it "has a count of how many planets in the Solar_System" do
		expect( @a.number_of_planets ).to eq( "3" )
	end

	it "has a method to add planets to the Solar_System" do
		@x = Planet.new
		@x.name = "X"
		@a.add_planet( @x )
		expect( @a.planets ).to eq( [ "Sun", "Mars", "Mercury", "X" ] )
	end

	it "has a method Super Nova that destroys all planets" do
		@a.super_nova
		expect( @a.number_of_planets ).to eq( "0" )
		expect( @a.planets ).to eq( [] )
	end
end