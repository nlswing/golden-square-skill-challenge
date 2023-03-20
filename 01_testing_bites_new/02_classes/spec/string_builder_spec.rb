require 'string_builder'

RSpec.describe StringBuilder do
  context "no string added"
    it "intially returns an empty string" do
    string = StringBuilder.new
    expect(string.output).to eq ""
    end

  it "initially returns a length of zero" do
    string = StringBuilder.new
    expect(string.size).to eq 0
  end

  context "multiple strings"
    it "takes a multiple strings added by user and returns them" do
      string = StringBuilder.new
      string.add("Mary")
      string.add("Tom")
      string.add("Toast")
      expect(string.output).to eq "MaryTomToast"
    end
  
    it "returns the added length of all inputted strings" do
    string = string = StringBuilder.new
    string.add("Mary")
    string.add("Tom")
    string.add("Toast")
    expect(string.size).to eq 12
    end
end