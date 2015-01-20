# echo input string
def echo (echo_this)
  echo_this
end

# echo input string all uppercase ( shout )
def shout(echo_this_and_shout)
  echo_this_and_shout.upcase
end

# echo input string, repeat number of times per second argument
def repeat(echo_this, this_many=2)
  count = 1
  result = ""
  while (count <= this_many) do
    result = result + echo_this
    if (count<this_many)
      result = result + " "
    end
    count = count + 1
  end
  result
end

# echo letters from the beginning of the input string
# numbering the amount in the second argument
def start_of_word(word, num_of_char)
  word[0..num_of_char-1]
end

# echo the first word of the input string
def first_word(phrase)
  words = phrase.split(" ")
  words[0]
end

# Capitalize input phrase in a "title" style
def titleize(phrase)
  little_words = {"The" => "the", "And" => "and", "Over" => "over"}
  phrase = phrase.split(" ").map(&:capitalize)
  phrase.map! do |word|
    little_words.each do |key, value|
      if(word == key)
        word = value
      end
    end
    word
  end
  phrase[0] = phrase[0].capitalize
  phrase.join(" ")
end
