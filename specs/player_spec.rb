require("minitest/autorun")
require("minitest/rg")
require_relative("../player")

class PlayerTest < Minitest::Test

def setup
  @name = Player.new("James", 6)
end

def test_get_name
  assert_equal("James", @name.name)
end

def test_get_number_of_lives
  assert_equal(6, @name.number_of_lives)
end


end
