# A method called count_words that takes a string as an argument 
# and returns the number of words in that string.

require 'count_words'

RSpec.describe "count_words method" do
  context "when given an empty string" do
    it "returns 0" do
      result = count_words(" ")
      expect(result).to eq 0
    end
  end

  context "when given a string" do
    it "returns number of words" do
      result = count_words("one two three four")
      expect(result).to eq 4
    end
  end
end






