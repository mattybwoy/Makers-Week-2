require 'greeter'

describe Greeter do
  describe "greet" do
    it "greets with a smiley face" do
      fake = double :smile, get: ":)"
      #above line creates a double of smiley instance object of the Smiley class, and ist method get.
      greeter = Greeter.new(fake)
      expect(greeter.greet).to eq "Hello :)"
    end
  end
end

describe Smiley do
  describe "get" do
    it "prints a smiley face" do
      smiley = Smiley.new
      expect(smiley.get).to eq ":)"
    end
  end
end