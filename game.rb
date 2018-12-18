require_relative("hiddenword.rb")

class Game < HiddenWord

attr_accessor :player, :hidden_word, :guessed_letter

def initialize(player, hidden_word, guessed_letter)
  @player = player
  @hidden_word = hidden_word
  @guessed_letter = guessed_letter
end
# thanks stackoverflow!
def change_word(hidden_word)
   hidden_word.gsub(/\S/, '*')
end

def guess(the_word, guessed_letter)
  if the_word.include? guessed_letter
    return true
  end
  else false
end

end
