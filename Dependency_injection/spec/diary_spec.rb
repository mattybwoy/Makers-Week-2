require 'diary'

describe Diary do
    describe "new diary entry" do
        it "adds a new entry in diary" do
         fake = double :entry
         fake_class = double :entry_class, new: fake
         
        diary = Diary.new
        diary.add("title","body",fake_class)
        expect(diary.entries).to include(fake)
        end
    end
end