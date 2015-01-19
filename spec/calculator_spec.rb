# # Topics
#
# * functions
# * math
# * arrays
# * iterating/looping
#
# # Calculator
#
# you will build a simple calculator script with the following methods:
#
# `add` takes two parameters and adds them
#
# `subtract` takes two parameters and subtracts the second from the first
#
# `sum` takes an *array* of parameters and adds them all together
#
# # Warning
#
# You may not have enough knowledge yet to complete `sum`. You will probably
# need to use **loops** (e.g. `while`) or **iterators** (e.g. `each`) to
# get the tests to pass.
#
# # Bonus
#
# There are also some bonus exercises for when you finish the regular ones. The bonus round will help teach you test-driven *development*, not simply test-guided *learning*.
#
# Your mission, should you choose to accept it, is to write *tests* for three new methods:
#
# * `multiply` which multiplies two numbers together
# * `power` which raises one number to the power of another number
# * `[factorial](http://en.wikipedia.org/wiki/Factorial)` (check Wikipedia if you forgot your high school math).
#
#

require "rspec"
require_relative "../lib/calculator"
require "spec_helper"

describe "add" do
  it "adds 0 and 0" do
    #add(0,0).should == 0     ( is deprecated )
    expect(add(0,0)).to eq(0)
  end

  it "adds 2 and 2" do
    #add(2,2).should == 4
    expect(add(2,2)).to eq(4)
  end

  it "adds positive numbers" do
    #add(2,6).should == 8
    expect(add(2,6)).to eq(8)
  end
end

describe "subtract" do
  it "subtracts numbers" do
    #subtract(10,4).should == 6
    expect(subtract(10,4)).to eq(6)
  end
end

describe "sum" do
  it "computes the sum of an empty array" do
    #sum([]).should == 0
    expect(sum([])).to eq(0)
  end

  it "computes the sum of an array of one number" do
    #sum([7]).should == 7
    expect(sum([7])).to eq(7)
  end

  it "computes the sum of an array of two numbers" do
    #sum([7,11]).should == 18
    expect(sum([7,11])).to eq(18)
  end

  it "computes the sum of an array of many numbers" do
    #sum([1,3,5,7,9]).should == 25
    expect(sum([1,3,5,7,9])).to eq(25)
  end
end

# Extra Credit Test-Driving Bonus:
# once the above tests pass,
# write tests and code for the following:

describe "multiply" do

  it "multiplies two numbers" do
    #multiply(5,6).should == 30
    expect(multiply(5,6)).to eq(30)
  end

  it "multiplies several numbers" do
    #multiply(2,3,-4).should == -24
    expect(multiply(2,3,-4)).to eq(-24)
  end
end

describe "power" do

  it "raises one number to the power of another number" do
    #power(5,2).should == 25
    expect(power(5,2)).to eq(25)
  end

  it "raises one number to the power of another number" do
    #power(3, 5).should == 243
    expect(power(3, 5)).to eq(243)
  end
end

# http://en.wikipedia.org/wiki/Factorial
describe "factorial" do
  it "computes the factorial of 0" do
    #factorial(0).should == 1
    expect(multiply(2,3,-4)).to eq(-24)
  end

  it "computes the factorial of 1" do
    #factorial(1).should == 1
    expect(factorial(0)).to eq(1)
  end

  it "computes the factorial of 2" do
    #factorial(2).should == 2
    expect(factorial(2)).to eq(2)
  end

  it "computes the factorial of 5" do
    #factorial(5).should == 120
    expect(factorial(5)).to eq(120)
  end

  it "computes the factorial of 10" do
    #factorial(10).should == 3628800
    expect(factorial(10)).to eq(3628800)
  end
end
