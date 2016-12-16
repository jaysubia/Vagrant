require_relative 'wizard'
RSpec.describe Wizard do
   before do
      @Wizard = Wizard.new
    end
   it 'has a default health of 50 and intelligence of 25' do
      expect(@Wizard.intelligence).to eq(25)
      expect(@Wizard.health).to eq(50)
    end
    it 'has a heal method that increases health by 10' do
		@Wizard.health = 0
		@Wizard.heal
		expect(@Wizard.health).to eq(10)
	end
    it 'has an ancestor chain that includes Human' do
		human = Wizard.ancestors.include?(Human)
		expect(human).to eq(true)
	end
	it 'has a fireball method that attacks an object and reduces the object health' do
		@Wizard.health = 20
		@Wizard.fireball.health
		expect(@Wizard.health).to eq(0)	
	end

end
