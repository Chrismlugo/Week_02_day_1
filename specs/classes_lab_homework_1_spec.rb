require("minitest/autorun")
require("minitest/rg")
require_relative("../classes_lab_homework")

class TestStudent < MiniTest::Test

  def test_student_name
    student_name = Student.new("Chris", 4, "Ruby")
    assert_equal("Chris", student_name.name())
  end
end

def test_student_number
  cohort_number = Student.new("Chris", 4, "Ruby")
  assert_equal(4, cohort_number.number())
end

def test_new_Student
  student_name = Student.new("Chris", 4, "Ruby")
  student_name.name = ("Vincent")
  cohort_number = Student.new("Chris", 4, "Ruby")
  cohrort_number.number = (5)

  assert_equal("Vincent", student_name.name())
  assert_equal(5, cohort_number.number())
end

def test_student_talk
  student_name = Student.new("Chris", 4, "Ruby")

  assert_equal("I can talk!", student_name.talk())
end

def test_say_favourite_language
  favourite_language = Student.new("Chris", 4, "Ruby")

  assert_equal("I love Ruby", student.favourite_language())
end

class TestTeam < MiniTest::Test

  def test_set_coach_name

    team = Team.new("Seattle Seahawks", ["bob"], "Pete Carrol", 0)
    team.set_coach_name("Chris Murphy")


    assert_equal("Chris Murphy", team.coach)
  end

  def test_add_new_player
    team = Team.new("Seahawks", ["Bob", "Bill", "Will"], "Chris Murphy", 0)
    team.add_new_player("Rob")

    assert_equal(["Bob", "Bill", "Will", "Rob"], team.players)
  end

  def test_player_search
    team = Team.new("Seahawks", ["Bob", "Bill", "Will"], "Chris Murphy", 0)
    player = ("Will")

    assert_equal(true, team.player_search("Will"))
  end

def test_team_points
  team = Team.new("Seahawks", ["Bob", "Bill", "Will"], "Chris Murphy", 0)

  assert_equal( 0, team.points())
end

def points_update
    team = Team.new("Seahawks", ["Bob", "Bill", "Will"], "Chris Murphy", 0)
    points_update = (1)

    assert_equal(1, team.points_update)

  end

end
class LibraryTest < MiniTest::Test

  def test_library_has_books
    library = Library.new([])
    assert_equal([], library.books)
  end

  def test_get_info_for_title
    book = {
      title: "Lord of the Rings",
      rental_details: {
        student_name: "Jeff",
        date:"29/01/2018"
      }
    }

    library = Library.new([book])
    book_info =
    library.get_info_for_title("Lord of the Rings")
    assert_equal(book, book_info)
  end

  def test_return_rental_details

    book = {
      title: "Lord of the Rings",
      rental_details: {
        student_name: "Jeff",
        date:"29/01/2018"
      }
    }

    library = Library.new([book])
    rental_info =
    library.return_rental_details("Lord of the Rings")
    assert_equal(book[:rental_details], rental_info)
  end

  def test_add_to_book_list
book =
    {
      title: "Brave New World",
      rental_details:{
        student_name: "",
        date: ""
      }
    }


    library = Library.new([])
    library.add_to_book_list(book)


    assert_equal(1, library.books.count)

end
def test_change_of_details
  book =
  {
    title: "Brave New World",
    rental_details:{
      student_name: "Ben",
      date: "08/09/2018"
    }
  }

  library = Library.new([book])
  library.change_of_details("Brave New World", "Ben", "08/09/2018")
  assert_equal(library.get_info_for_title("Brave New World"))
  assert_equal("Joel", "08/10/2018")
end


end
