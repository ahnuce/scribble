require 'rspec'

require_relative "../models/dog"

describe Dog do
# if you want to use the variable roxas in all of the methods instead of writing it each time
# before(:each)do        or before(:all)do     ====> does the same thing
#   @roxas = Dog.new("Roxas", 10)
# end
# //////////////////////////////////////////////
# example:
# subject(:roxas)do
#   roxas = Dog.new('Roxas', 10)
# end
# //////////////////////////////////////////////
# example:
# it "has the class Dog" do
#   expect(@roxas).to be_a(Dog)
# end
# //////////////////////////////////////////////
it "has the class Dog" do
  pos = Dog.new("Damn dog", 10)
  expect(pos).to be_a(Dog)
end
it "has a String for a name" do
  pos = Dog.new("Damn dog", 10)
expect(pos.name).to be_a(String)
end
it "has an integer for hunger_level" do
  hungrydog = Dog.new('Damn dog', 9000)
  expect(hungrydog.hunger_level).to be_a(Integer)
end


describe '#set_hunger_level' do
  context 'when new hunger level' do
    context 'is less than 0' do
      it 'set the hunger level to 0' do
        hungrydog = Dog.new('Damn dog', -9000)
        expect(hungrydog.hunger_level).to be < (0)
      end
    end
    context 'is greater than 0' do
      it "set hunger level to the new hunger level" do
        hungrydog = Dog.new('Damn dog', 9000)
        expect(hungrydog.hunger_level).to be > (0)
      end
    end
  end
end











end
