require_relative("hiddenword.rb")

class Game < HiddenWord

attr_reader :player, :hidden_word, :guessed_letter

def initialize(player, hidden_word, guessed_letter)
  @player = player
  @hidden_word = hidden_word
  @guessed_letter = guessed_letter
end
# thanks stackoverflow!
def change_word(word)
   word.gsub(/\S/, '*')
end

end
