def echo (echo_this)
  echo_this
end

def shout(echo_this_and_shout)
  echo_this_and_shout.upcase
end

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

def start_of_word(word, num_of_char)
  word[0..num_of_char-1]
end

def first_word(phrase)
  words = phrase.split(" ")
  words[0]
end

def titleize(phrase)
  excluded = ["The" => "the", "And" => "and", "Over" => "over"]
  phrase = phrase.split(" ").map(&:capitalize)
  phrase.map! do |word|
    excluded.each do |key,value|
      if(word == key)
        word = value
      end
    end
    word
  end
  phrase[0].capitalize
  phrase.join(" ")
end
