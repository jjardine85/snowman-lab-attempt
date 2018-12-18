class HiddenWord

attr_accessor :word

def initialize(word)
  @word = word
  # @guess = guess
end

def guess(letter)
  if word.include? letter
    return true
  end
  else false
end

end
