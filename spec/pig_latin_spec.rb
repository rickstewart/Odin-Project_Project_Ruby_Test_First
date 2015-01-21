# # Topics
#
# * modules
# * strings
#
# # Pig Latin
#
# Pig Latin is a made-up children's language that's intended to be confusing. It obeys a few simple rules (below) but when it's spoken quickly it's really difficult for non-children (and non-native speakers) to understand.
#
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
#
# (There are a few more rules for edge cases, and there are regional variants too, but that should be enough to understand the tests.)
#
# See <http://en.wikipedia.org/wiki/Pig_latin> for more details.
#
#

require "rspec"
require_relative "../lib/pig_latin"
require "spec_helper"

describe "#translate" do

  it "translates a word beginning with a vowel" do
    #s = translate("apple").should == "appleay"     ( is deprecated )
    expect(translate("apple")).to eq("appleay")
  end

  it "translates a word beginning with a vowel" do
   # s = translate("orange").should == "orangeay"     ( is deprecated )
    expect(translate("orange")).to eq("orangeay")
  end

  it "translates a word beginning with a consonant" do
    #s = translate("banana").should == "ananabay"     ( is deprecated )
    expect(translate("banana")).to eq("ananabay")
  end

  it "translates a word beginning with two consonants" do
    #s = translate("cherry").should == "errychay"     ( is deprecated )
    expect(translate("cherry")).to eq("errychay")
  end

  it "translates two words" do
    #s = translate("eat pie").should == "eatay iepay"     ( is deprecated )
    expect(translate("eat pie")).to eq("eatay iepay")
  end

  it "translates a word beginning with three consonants" do
    #translate("three").should == "eethray"     ( is deprecated )
    expect(translate("three")).to eq("eethray")
  end

  it "counts 'sch' as a single phoneme" do
   # s = translate("school").should == "oolschay"     ( is deprecated )
    expect(translate("school")).to eq("oolschay")
  end

  it "counts 'qu' as a single phoneme" do
    #s = translate("quiet").should == "ietquay"     ( is deprecated )
    expect(translate("quiet")).to eq("ietquay")
  end

  it "counts 'qu' as a consonant even when it's preceded by a consonant" do
    #s = translate("square").should == "aresquay"     ( is deprecated )
    expect(translate("square")).to eq("aresquay")
  end

  it "translates many words" do
    #s = translate("the quick brown fox").should == "ethay ickquay ownbray oxfay"     ( is deprecated )
    expect(translate("the quick brown fox")).to eq("ethay ickquay ownbray oxfay")
  end

  # Test-driving bonus:
  # * write a test asserting that capitalized words are still capitalized (but with a different initial capital letter, of course)
  # * retain the punctuation from the original phrase
  it "capitalized words are still capitalized" do
    expect(translate("The quick brown Fox")).to eq("Ethay ickquay ownbray Oxfay")
  end
end
