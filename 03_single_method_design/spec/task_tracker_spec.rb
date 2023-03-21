require 'task_tracker'

RSpec.describe "task_tracker method" do
  context "when string is #TODO" do
    it "returns true" do
    expect(task_tracker("#TODO")).to eq true
    end
  end

  context "when text contains #TODO" do
    it "returns true" do
    expect(task_tracker("#TODO Go to the shops")).to eq true
    end
  end

  context "when text doesn't contain #TODO" do
    it "returns false" do
    expect(task_tracker("go to the shops")).to eq false
    end
  end
end
