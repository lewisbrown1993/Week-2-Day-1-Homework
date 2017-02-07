class Library
  attr_accessor :books
  def initialize(books)
    @books = books
  end

  def rental_by_title(title)

    for book in @books
      if title == book[:title]
        return book[:rental_details]
      end
    end
  end

  def add_book(name)

    x = {
  title: name,
  rental_details: {
    student_name: "",
    date: ""
  }
}
  @books.push(x)
  end
end