class Player

attr_reader :name, :number_of_lives

def initialize(name, number_of_lives)
  @name = name
  @number_of_lives = number_of_lives
end

def wrong_guess
  number_of_lives - 1
end


end
