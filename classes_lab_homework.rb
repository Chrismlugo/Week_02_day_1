class Student
  attr_accessor :name, :Cohort_number, :language

  def initialize(input_name, input_number, input_language )

    @name = input_name
    @number = input_number
    @language = input_language


  end
end

def student_talk(student)
  if student == @name && @number
    return "I can talk"
  end
end

def favourite_language(student)
  if favourite_language = @language
    return "I love #{@language}"
  else
  end

end

class Team
  attr_accessor :team, :players, :coach, :points

  def initialize(input_team_name, input_players, input_coach_name, input_points)

    @team = input_team_name
    @players = input_players
    @coach = input_coach_name
    @points = 0

  end

  def set_coach_name(name)
    @coach = name
  end


  def add_new_player(name)
    new_player = @players << name
  end

  def player_search(person)
    for player in @players
      if player == person
        return true
      end
    end
    return nil
  end
end

def team_points
  team_points == @points
end


def self.win
  @points += 1
  p "#{@team} win! "
end

def self.lose
  @points = 0
  p "#{@team} lose!"
end


def points_update(team)
  if team == team.win
    puts team.win
  end
  if team == team.lose
    puts team.lose
  end

end




class Library
  attr_reader :books

  def initialize(books)
    @books = books
end

def get_info_for_title(title)
  for book in @books
    if book[:title] == title
      return book
    end
  end
  return nil
end

def return_rental_details(title)
  for book in @books
    if book[:title] == title
      return book[:rental_details]
    end
  end
  return nil
end

def add_to_book_list(book)
 @books << book

end



def change_of_details(title, student, date)
for book_name in library
  if book_name[:title] == title
    return title[:rental_details][:student_name].replace("Joel")
    return title[:rental_details][:date].replace("08/10/2018")
  end
end


end


end
