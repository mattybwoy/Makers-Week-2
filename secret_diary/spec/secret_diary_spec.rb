require_relative '../lib/secret_diary'

### WARNING ###
# For the purposes of this exercise, you are testing after
# the code has been written. This means your tests are prone
# to false positives!
#
# Make sure your tests work by deleting the bodies of the
# methods in `secret_diary.rb`, like this:
#
# ```ruby
# def write(new_message)
# end
# ```
#
# If they fail, then you know your tests are working
# as expected.
### WARNING ###

RSpec.describe SecretDiary do
  #let(:diary) {double :diary, :read => "unlocked", :write => "unlocked"}
  #can use double as above instead of writing out individual doubles with double keyword
  context "when locked" do
    #pending "refuses to be read"
    it "doesn't allow the diary to be read" do
      diary = double("a diary")
      secretdiary = SecretDiary.new(diary)
      #db1 = double("some person", :read => "Go away!")
      expect(secretdiary.read).to eq("Go away!")
    end

    #pending "refuses to be written"
    it "doesn't allow the diary to be written" do
      diary = double("a diary")
      secretdiary = SecretDiary.new(diary)
      #db1 = double("some person", :write => "Go away!")
      expect(secretdiary.write("string")).to eq("Go away!")
    end

  context "when unlocked" do
    #pending "gets read"
    it "fails when message is received" do
      diary = double("a diary", :read => "unlocked")
      expect(diary).to receive(:read)
  
      secretdiary = SecretDiary.new(diary)
      secretdiary.unlock
      expect(secretdiary.read).to eq("unlocked")
    end
    #pending "gets written"
    it "fails when message is received for write" do
      diary = double("a diary", :write => "unlocked")
      #expect(diary).to receive(:write)
      secretdiary = SecretDiary.new(diary)
      secretdiary.unlock
      #expect(secretdiary.write("good")).to eq("unlocked")
      expect(secretdiary.write("whatever")).to eq(nil)
    end
  end
end
end 
