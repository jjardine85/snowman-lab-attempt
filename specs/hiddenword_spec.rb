require("minitest/autorun")
require("minitest/rg")
require_relative("../hiddenword")

class HiddenWordTest < Minitest::Test

def setup
 @word1 = HiddenWord.new("Codeclan")
end

def test_get_hidden_word
  assert_equal("Codeclan", @word1.word)
end
# why would a hidden_word have a guess?
# had to check github for way forward
# after second commit - got a bit stuck
# I thought the game was a runner file
# rather than an object
# def test_get_guessed_letter
#   assert_equal("x", @word1.guess)
# end


def test_true_or_false
  assert_equal(true, @word1.guess("n"))
end

def test_true_or__false
  assert_equal(false, @word1.guess("m"))
end

end
