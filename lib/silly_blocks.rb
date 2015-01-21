
# reverses each word in the string returned by the default block
def reverser(user_string)
  array_form_of_input = user_string.split.map{|word| word.reverse}
  return array_form_of_input.join(' ')
end

puts reverser("Hello! You")

puts result = reverser do
  "hello"
end
