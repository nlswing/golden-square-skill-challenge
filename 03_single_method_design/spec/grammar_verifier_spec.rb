require 'grammar_verifier'

RSpec.describe "grammar_verifier method" do
  context "no sentance entered" do
    it "returns a fail message" do
      expect{ grammar_verifier("")}.to raise_error "Not a sentence."
    end
  end

  context "text with first character as capital" do
    it "returns a false value" do
      expect(grammar_verifier("The cat sat on a mat")).to eq false
    end
  end

  context "text with only end punctuation" do
    it "returns true for last character with period value" do
      expect(grammar_verifier("the cat sat on a mat.")).to eq false
    end
  end

  context "text with capital first character and punctuation last character" do
    it "returns true for period as last character" do
      expect(grammar_verifier("The cat sat on a mat.")).to eq true
    end

    it "returns true for question mark last charater" do
      expect(grammar_verifier("The cat sat on a mat?")).to eq true
    end
  
    it "returns true for exclamation mark last character" do
      expect(grammar_verifier("The cat sat on a mat!")).to eq true
    end
  end
end