# A method called count_words that takes a string as an argument 
# and returns the number of words in that string.

require 'count_words'

RSpec.describe "count_words method" do
  context "when given a string" do
    it "returns number of words" do
      result = count_words("one two three four")
      expect(result).to eq 4
    end
  end

  context "when strings contains anything other than a word" do
    it "raises an error" do
        result = count_words("1")
        expect(result).to eq "Please enter words only" 
    end
  end
end




