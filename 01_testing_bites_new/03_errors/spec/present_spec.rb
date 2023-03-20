require 'present'

RSpec.describe Present do
  context "when a present is already wrapped" do
    it "fails" do
      present = Present.new
      present.wrap("Guitar")
      expect { present.wrap("Mic") }.to raise_error "A contents has already been wrapped."
      expect(present.unwrap).to eq "Guitar"
    end
  end

  context "when no contents wrapped" do
    it "fails" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
  end

  context "a present has been added" do
    it "passes" do
      present = Present.new
      present.wrap("guitar")
      expect(present.unwrap).to eq "guitar"
    end
  end


end
