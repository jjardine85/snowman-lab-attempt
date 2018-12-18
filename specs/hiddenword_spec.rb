require("minitest/autorun")
require("minitest/rg")
require_relative("../hiddenword")

class HiddenWordTest < Minitest::Test

def setup
 @word1 = HiddenWord.new("Codeclan", "x")
end

def test_get_hidden_word
  assert_equal("Codeclan", @word1.word)
end

def test_get_guessed_letter
  assert_equal("x", @word1.guess)
end

end
