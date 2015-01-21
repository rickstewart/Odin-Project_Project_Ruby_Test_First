# # Pig Latin
#
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word,
#         and then add an "ay" sound to the end of the word.
#
# Rule 3: Capitalized words are still capitalized (but with a different initial capital letter, of course)

def translate(users_phrase)
  vowels = %w(a e i o u A E I O U)
  consonants = %w(b B c C d D f F g G h H j J k K l L m M n N p P q Q r R s S t T v V w W x X y Y z Z)
  answer = []
  found_consonants = ''
  # convert input string to an Array
  words_array = users_phrase.split(' ')
  # process each word in the input phrase one by one
  words_array.each do |word|
    letters_in_word = word.split('')
    # case where word starts with a vowel
    if(word.start_with?(*vowels))
      word = word + 'ay'
    # else case where word start with one or more consonants
    else
      # test if word is Capitalized, set flag true if it is
      is_cap = (word != word.downcase) ? true : false
      # pull off all consonants until we find first vowel
      while(word.start_with?(*consonants)) do
        temp_hold_consonant = letters_in_word.shift.downcase
        # test for special case: treat 'qu' as a single consonant
        if(temp_hold_consonant == 'q')
          temp2_hold_consonant = letters_in_word.shift
          if(temp2_hold_consonant == 'u')
          found_consonants = found_consonants + temp_hold_consonant
          found_consonants = found_consonants + temp2_hold_consonant
          end
        # else it is just a normal consonant
        else
          found_consonants = found_consonants + temp_hold_consonant
        end
        word = letters_in_word.join('')
      end
      word = letters_in_word.join('')
      word = word << found_consonants + 'ay'
      found_consonants = ''
    end
    # if is_cap test was true then Capitalize the word
    if(is_cap)
      word = word.capitalize
    end
    # rebuild the complete phrase using Pig Latin words
    answer.push(word)
  end
  # convert complete phrase back into a string and return the value
  return answer.join(' ')
end
