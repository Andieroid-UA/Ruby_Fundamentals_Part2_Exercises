class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end

  def description
    return "#{@title} by #{@author}"
  end
end

book = Book.new("1984", "George Orwell")