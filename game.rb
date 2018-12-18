# require_relative("player.rb")

class Game

attr_reader :player, :hidden_word, :guessed_letter

def initialize(player, hidden_word, guessed_letter)
  @player = player
  @hidden_word = hidden_word
  @guessed_letter = guessed_letter
end



end
