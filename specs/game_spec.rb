require("minitest/autorun")
require("minitest/rg")
require_relative("../game")
require_relative("../player")
require_relative("../hiddenword")

class GameTest < Minitest::Test

def setup
@player0 = Player.new("John", 6)
@word0 = HiddenWord.new("TestworD")
@game = Game.new(@player0, @word0, "x")
end

def test_objects_work
  assert_equal(6, @player0.number_of_lives)
  assert_equal("TestworD", @game.hidden_word.word)
  assert_equal("John", @game.player.name)
  assert_equal("x", @game.guessed_letter)
end

end
