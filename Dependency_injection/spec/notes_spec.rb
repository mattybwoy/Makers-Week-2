require 'notes'

describe Note do
    describe "initialize" do
        it "creates the formatter" do 
        fake_instance = double :formatter, format: "Title: title\nbody"
        #double created above for class NoteFormatter, exact return phrase cannot be used as we have not yet declared note
        note = Note.new("Song", "Lyrics", fake_instance)
        #the arguments passed into note do not matter as the response we are expecting from calling format method is hardcorded.
        expect(note.display).to eq"Title: title\nbody"
        end
    end
end