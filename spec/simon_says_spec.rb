# # Simon Says
#
# ## Topics
#
# * functions
# * strings
# * default parameter values
#
# ## Hints
#
# When you make the second `repeat` test pass, you might break the **first**
#

require "rspec"
require_relative "../lib/simon_says"
require "spec_helper"

describe "Simon says" do
  describe "echo" do
    it "should echo hello" do
      #echo("hello").should == "hello"     ( is deprecated )
      expect(echo("hello")).to eq("hello")
    end

    it "should echo bye" do
      #echo("bye").should == "bye"
      expect(echo("bye")).to eq("bye")
    end
  end

  describe "shout" do
    it "should shout hello" do
      #shout("hello").should == "HELLO"
      expect(shout("hello")).to eq("HELLO")
    end

    it "should shout multiple words" do
      #shout("hello world").should == "HELLO WORLD"
      expect(shout("hello world")).to eq("HELLO WORLD")
    end
  end

  describe "repeat" do
    it "should repeat" do
      #repeat("hello").should == "hello hello"
      expect(repeat("hello")).to eq("hello hello")
    end

    # Wait a second! How can you make the "repeat" method
    # take one *or* two arguments?
    #
    # Hint: *default values*
    it "should repeat a number of times" do
      #repeat("hello", 3).should == "hello hello hello"
      expect( repeat("hello", 3)).to eq("hello hello hello")
    end
  end

  describe "start_of_word" do
    it "returns the first letter" do
      #start_of_word("hello", 1).should == "h"
      expect(start_of_word("hello", 1)).to eq("h")
    end

    it "returns the first two letters" do
      #start_of_word("Bob", 2).should == "Bo"
      expect(start_of_word("Bob", 2)).to eq("Bo")
    end

    it "returns the first several letters" do
      s = "abcdefg"
      #start_of_word(s, 1).should == "a"
      expect(start_of_word(s, 1)).to eq("a")
      #start_of_word(s, 2).should == "ab"
      expect(start_of_word(s, 2)).to eq("ab")
      #start_of_word(s, 3).should == "abc"
      expect(start_of_word(s, 3)).to eq("abc")
    end
  end

  describe "first_word" do
    it "tells us the first word of 'Hello World' is 'Hello'" do
      #first_word("Hello World").should == "Hello"
      expect(first_word("Hello World")).to eq("Hello")
    end

    it "tells us the first word of 'oh dear' is 'oh'" do
      #first_word("oh dear").should == "oh"
      expect(first_word("oh dear")).to eq("oh")
    end
  end

  describe "titleize" do
    it "capitalizes a word" do
      #titleize("jaws").should == "Jaws"
      expect(titleize("jaws")).to eq("Jaws")
    end

    it "capitalizes every word (aka title case)" do
      #titleize("david copperfield").should == "David Copperfield"
      expect(titleize("david copperfield")).to eq("David Copperfield")
    end

    it "doesn't capitalize 'little words' in a title" do
      #titleize("war and peace").should == "War and Peace"
      expect((titleize("war and peace"))).to eq("War and Peace")
    end

    it "does capitalize 'little words' at the start of a title" do
      #titleize("the bridge over the river kwai").should == "The Bridge over the River Kwai"
      expect(titleize("the bridge over the river kwai")).to eq("The Bridge over the River Kwai")
    end
  end
end
