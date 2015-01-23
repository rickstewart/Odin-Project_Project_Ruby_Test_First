# credit where credit due - example code was found here:
# http://www-rohan.sdsu.edu/doc/ruby/chp_04/classes.html
# class Address
#   attr_reader :street
#   def initialize
#     @street = ""
#   end
#   def street=(street)
#     @street = street
#   end
# end
#
# address = Address.new
# address.street = "23 St George St."

class Book
  attr_reader :title
  IGNORE_LIST = ['and', 'the', 'a', 'an', 'in', 'of']

  def title=(title)
    @title=title.split(' ')
    @title=@title.each do |word|
      IGNORE_LIST.each do |ignore|
        if ignore == word.downcase
          break word.downcase!
        else
          word.capitalize!
        end
      end
      @title[0].capitalize!
    end
    @title = @title.join(' ')
  end
end
