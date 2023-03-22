require "grammar_stats"

RSpec.describe GrammarStats do
  context "it describes true or false depending on the valid punctuation of a text" do
    it "returns true" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("The cat sat on the mat.")).to eq true
    end

    it "returns false" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("the cat sat on the mat")).to eq false
    end
  end

  context "it returns an integer the percentage of texts checked so far" do
    it "returns 50 when 2 out of 4 texts pass" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("The cat sat on the mat.")
      grammar_stats.check("The cat sat on the mat.")
      grammar_stats.check("the cat sat on the mat.")
      grammar_stats.check("The cat sat on the mat")
      expect(grammar_stats.percentage_good).to eq 50
    end
  end
end
