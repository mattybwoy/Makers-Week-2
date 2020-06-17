class Book
  def initialize
    @name
    @author
  end

  def name(name)
    @name = name
  end

  def author(author)
    @author = author
  end

  def display_book
    "#{@name}, #{@author}"
  end
end