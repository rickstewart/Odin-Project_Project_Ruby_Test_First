
# reverses each word in the string returned by the default block
def reverser
  caught_default_block = yield if block_given?
  caught_default_block.split(' ').map!{|word| word.reverse}.join(' ')
end

# adds number (entered as the argument) to the value returned by the default block
def adder(operand=1)
  caught_default_block = yield if block_given?
  caught_default_block + operand
end

# executes the default block the number of times as was input as an argument
def repeater(repeat = 1)
  repeat.times {yield if block_given?}
end
