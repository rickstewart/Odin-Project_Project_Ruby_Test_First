
# reverses each word in the string returned by the default block
def reverser
  result = ''
  caught_default_block = yield if block_given?
  caught_default_block.split(' ').map!{|word| word.reverse}.join(' ')
end

def adder(operand=1)
  result = ''
  caught_default_block = yield if block_given?
  caught_default_block + operand
end
