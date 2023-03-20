require 'gratitudes'

RSpec.describe Gratitudes.class do
  it "returns a statent of gratitude" do
  gratitudes = Gratitudes.new
  expect(gratitudes.format).to eq "Be grateful for: "
  end

  it "returns a single thing to be grateful for" do
  gratitudes = Gratitudes.new
  gratitudes.add("sunshine")
  expect(gratitudes.format).to eq "Be grateful for: sunshine"
  end

  it "returns multiple things to be grateful for" do
  gratitudes = Gratitudes.new
  gratitudes.add("sunshine")
  gratitudes.add("food")
  gratitudes.add("friends")
  expect(gratitudes.format).to eq "Be grateful for: sunshine, food, friends"
  end
end