require_relative("hiddenword.rb")

class Game < HiddenWord

attr_reader :player, :hidden_word, :guessed_letter

def initialize(player, hidden_word, guessed_letter)
  @player = player
  @hidden_word = hidden_word
  @guessed_letter = guessed_letter
end

def change_hidden_word(word)
  new_word = "#{word}".split(//)
  # for letter in new_word
  #   puts "*"
  new_word.each {|replace| replace.gsub!(/./, "*")}
  new_word.to_s
  new_word.join
  end

end
