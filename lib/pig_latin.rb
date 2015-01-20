
def translate(users_phrase)
  vowels = %w(a e i o u A E I O U)
  consonants = %w(b B c C d D f F g G h H j J k K l L m M n N p P q Q qu Qu r R s S t T v V w W x X y Y z Z)
  answer = []
  found_consonants = ''
  words_array = users_phrase.split(' ')
  words_array.each do |word|
    letters_in_word = word.split('')
    if(word.start_with?(*vowels))
      word = word + 'ay'
    else
      while(word.start_with?(*consonants)) do
        found_consonants = found_consonants + letters_in_word.shift
        word = letters_in_word.join('')
      end
      word = letters_in_word.join('')
      word = word << found_consonants + 'ay'
    end
    answer.push(word)
  end
  return answer.join(' ')
end
