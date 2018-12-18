require("minitest/autorun")
require("minitest/rg")
require_relative("../game")
require_relative("../player")
require_relative("../hiddenword")

class GameTest < Minitest::Test

def setup
@player0 = Player.new("John", 6)
@word0 = HiddenWord.new("TestworD")
@word1 = HiddenWord.new("Another test")
@game = Game.new(@player0, @word0, "e")
@game1 = Game.new(@player0, @word1, "x")
end

def test_objects_work
  assert_equal(6, @player0.number_of_lives)
  assert_equal("TestworD", @game.hidden_word.word)
  assert_equal("John", @game.player.name)
  assert_equal("x", @game1.guessed_letter)
end

def test_hide_method_works
  assert_equal("********", @game.change_word(@word0.word))
end

def test_hide_method_works_with_spaces
  assert_equal("******* ****", @game1.change_word(@word1.word))
end

def test_true_or_false
  assert_equal(true, @game0.guess(@word1.word, @game.guessed_letter))
end

def test_true_or____false
  assert_equal(false, @game1.guess(@word1.word, @game1.guessed_letter))
end

end
