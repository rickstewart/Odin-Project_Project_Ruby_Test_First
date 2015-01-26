# Credit where credit due: I found the following example code at -
# http://stackoverflow.com/questions/14866910/how-to-implement-options-hashes-in-ruby
# You could do something like this:
#
# class Person
#   def initialize(opts = {})
#     @options = opts
#   end
#   def my_age
#     return @options[:age] if @options.has_key?(:age)
#   end
# end
#
# and now you're able to call to the age like this
#
# p1 = Person.new(:age => 24)<br/>
# p2 = Person.new
#
# p1.my_age # => 24<br/>
# p2.my_age # => nil


class Temperature
  def initialize(opts = {})
    @options = opts
  end

  def Temperature.from_celsius(start_temp)
    Temperature.new(:c => start_temp)
  end

  def Temperature.from_fahrenheit(start_temp)
    Temperature.new(:f => start_temp)
  end

  def in_fahrenheit
    if @options[:c]
      return (@options[:c]*9.0/5.0+32.0) if @options.has_key?(:c)
    else
      return @options[:f] if @options.has_key?(:f)
    end
  end

  def in_celsius
    if @options[:f]
      return (@options[:f]-32.0)/9.0*5.0 if @options.has_key?(:f)
    else
      return @options[:c] if @options.has_key?(:c)
    end
  end
end
