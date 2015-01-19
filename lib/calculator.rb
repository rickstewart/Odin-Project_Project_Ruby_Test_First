# add two numbers
def add(op1, op2)
  op1 + op2
end

# subtract two numbers
def subtract(op1, op2)
  op1 - op2
end

# sum an Array of numbers
def sum (an_array)
  sum = 0
  an_array.each { |x| sum = sum + x }
  return sum
end

# multiply some number of numbers
def multiply(*ops)
  result = 1
  ops.each { |operand| result = result * operand }
  return result
end

# raises one number ( base ) to the power of the second number ( exp )
def power(base, exp)
  result = 1
  i = 0
  while (i < exp) do
    result = result * base
    i = i + 1
  end
  return result
end

# computes the factorial of a given positive integer (n!)
def factorial(number)
  i = 2
  result = 2
  if number < 2
    return 1
  else
    while (i < number) do
      i = i + 1
      result = result * i
    end
    return result
  end
end
