
def translate(phrase)
  vowels = %w(a e i o u)
  phrase_in_array = phrase.split("")
  if(phrase.start_with?(*vowels))
    phrase = phrase + 'ay'
  else
    while (!phrase.start_with?(*vowels)) do
      consonants = phrase_in_array.shift
      phrase = *phrase_in_array
    end
  phrase = *phrase_in_array.concat(consonants) + "ay"
  end
  return phrase
end
