require './lib/carfactory'

describe CarFactory do
  describe "creates a car" do
    it "new car creation" do
      fake_car = double :car
      fake_car_class = double :fake_class, new: fake_car

      car_factory = CarFactory.new(fake_car_class)
      expect(fake_car).to receive(:drive_away)
      #the fake car instance has now recieved the drive_away method, the make_a_car method must be called for drive_away to be invoked
      car_factory.make_a_car
    end
  end
end