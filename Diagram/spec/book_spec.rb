require './lib/book'

describe Book do
  describe "#Initialize" do
    it "creates a book" do
      book = Book.new
      expect(book).to be_an_instance_of(Book)
    end
  end
  describe "#name" do
    it "names the book" do
      book = Book.new
      expect(book.name("abc")).to eq ("abc")
    end
  end
    describe "#author" do
    it "author" do
      book = Book.new
      expect(book.author("dickens")).to eq ("dickens")
    end
end
end