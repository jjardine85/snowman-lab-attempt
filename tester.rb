def change_word(word)
   word.gsub(/\S/, '*')
end

p change_word("test but")
