require "diary"
require "diary_entry"

RSpec.describe "integration" do
  context "after adding some entries" do
    it "lists out the entries" do
    diary = Diary.new
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    diary.add(diary_entry)
    expect(diary.all).to eq [diary_entry]
    end
  end
end