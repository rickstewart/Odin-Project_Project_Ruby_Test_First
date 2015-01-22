# # Topics
#
# * blocks
# * closures
# * yield
# * loops
#

require "rspec"
require_relative "../lib/silly_blocks"
require "spec_helper"

describe "some silly block functions" do

  describe "reverser" do
    it "reverses the string returned by the default block" do
      result = reverser do
        "hello"
      end
      expect(result).to eq("olleh")
      #result.should == "olleh"        ( is deprecated )
    end

    it "reverses each word in the string returned by the default block" do
      result = reverser do
        "hello dolly"
      end
      expect(result).to eq("olleh yllod")
      #result.should == "olleh yllod"        ( is deprecated )
    end
  end

  describe "adder" do
    it "adds one to the value returned by the default block" do
      test = adder do
        5
        end
      #end.should == 6        ( is deprecated )
      expect(test).to eq(6)
    end

    it "adds 3 to the value returned by the default block" do
      test = adder(3) do
        5
      end
      #end.should == 8       ( is deprecated )
      expect(test).to eq(8)
    end
  end

  describe "repeater" do
    it "executes the default block" do
      block_was_executed = false
      repeater do
        block_was_executed = true
      end
      block_was_executed.should == true      #( is deprecated )
    end

    it "executes the default block 3 times" do
      n = 0
      repeater(3) do
        n += 1
      end
      n.should == 3      #( is deprecated )
    end

    it "executes the default block 10 times" do
      n = 0
      repeater(10) do
        n += 1
      end
      n.should == 10      #( is deprecated )
    end

  end

end
