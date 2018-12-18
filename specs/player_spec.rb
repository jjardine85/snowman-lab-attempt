require("minitest/autorun")
require("minitest/rg")
require_relative("../player")

class PlayerTest < Minitest::Test

def setup
  @name1 = Player.new("James", 6)
end

def test_get_name
  assert_equal("James", @name1.name)
end

def test_get_number_of_lives
  assert_equal(6, @name1.number_of_lives)
end

def test_wrong_guess
  assert_equal(5, @name1.wrong_guess)
end

end
