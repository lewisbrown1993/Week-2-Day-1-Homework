require 'minitest/autorun'
require_relative './library'

class TestLibrary < Minitest::Test

def setup()
  @array_of_books = [
    {
      title: "lord_of_the_rings",
      rental_details: { 
       student_name: "Jeff", 
       date: "01/12/16"
     }
    },
    {
      title: "lord_of_the_flies",
      rental_details: {
        student_name: "Lewis",
        date: "04/12/16"
      }
    },
    {
      title: "bfg",
      rental_details: {
        student_name: "Sarah",
        date: "23/11/16"
      }
    },
    {
      title: "the_hobbit",
      rental_details: {
        student_name: "James",
        date: "14/12/16"
      }
    }
  ]

  end

 


def test_all_details
  library = Library.new(@array_of_books)
  assert_equal(@array_of_books, library.books)
end

def test_rental_by_title
  library = Library.new(@array_of_books)
  assert_equal(@array_of_books[1][:rental_details], library.rental_by_title("lord_of_the_flies"))
end

def test_add_new_book
  library = Library.new(@array_of_books)
  library.add_book("james_and_the_giant_peach")
  assert_equal("james_and_the_giant_peach", library.books[4][:title])

end

end