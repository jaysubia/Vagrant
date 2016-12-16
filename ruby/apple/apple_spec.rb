require_relative 'apple'
RSpec.describe Apple_Tree do

	before do
		@a = Apple_Tree.new
		@a1 = Apple_Tree.new
		@a1.year_gone_by
		@a2 = Apple_Tree.new
		@a2.year_gone_by.year_gone_by
		@a3 = Apple_Tree.new
		@a3.year_gone_by.year_gone_by.year_gone_by
		@a4 = Apple_Tree.new
		@a4.year_gone_by.year_gone_by.year_gone_by.year_gone_by
		@a10 = Apple_Tree.new
		@a10.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by
		@a11 = Apple_Tree.new
		@a11 = @a11.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by
	end

	it "has a getter and setter attribute age" do
		expect( @a.age ).to eq( 0 )
	end

	it "has a getter and setter attribute height" do
		expect( @a.height ).to eq( 4 )
	end

	it "has a getter and setter attribute apples that is a count of apples" do
		expect( @a.apples ).to eq( 0 )
	end

	it "has a method year_gone_by that affects age and height" do
		expect( @a1.age ).to eq( 1 )
		expect( @a1.height ).to eq( 7 )
	end

	it "should not grow apples for the first three years" do
		expect( @a1.apples ).to eq ( 0 )
		expect( @a2.apples ).to eq ( 0 )
		expect( @a3.apples ).to eq ( 0 )
		expect( @a4.apples ).to eq ( 25 )
	end

	it "has a method pick_apples that takes all the apples" do
		@a4.pick_apples
		expect( @a4.apples ).to eq( 0 )
	end

	it "decays after 10 years and does not grow apples" do
		expect( @a10.apples ).to eq( 175 )
		expect( @a11.apples ).to eq( 175 )
	end
end